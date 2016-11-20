using UnityEngine;
using System.Collections;
using System;
using System.Linq;

[RequireComponent(typeof(SteamVR_TrackedObject))]
public class GotoPointer : MonoBehaviour {

	bool wait, triggerHeld, triggerPrimed;
	float radius = 2f;
	float force = 50f;
	int solverIterations = 16;
	LayerMask mask;
	Coroutine tracking;
	RaycastHit[] results;
	Vector3[] positions;


	[SerializeField] GameObject prefab;
	[SerializeField] GameObject disc;
	GameObject player, tracker;

	SteamVR_TrackedObject trackedObj;
	SteamVR_Controller.Device device;
	LineRenderer line;
	Transform target;

	void Awake() {
		solverIterations = 16;
		results = new RaycastHit[solverIterations];
		positions = new Vector3[solverIterations];
		player = GameObject.FindGameObjectWithTag("Player"); 
		mask = 1 << LayerMask.NameToLayer("Room");
	}

	void Start() {
		trackedObj = GetComponent<SteamVR_TrackedObject>();
		device = SteamVR_Controller.Input((int)trackedObj.index);
	}

	//void OnEnable() { EnableLine(); }

	void OnDisable() { DisableLine(); }

	void EnableLine() {
		line = new GameObject(name+".path").AddComponent<LineRenderer>();
		line.SetWidth(0.01f, 0.2f);
		line.material = new Material(Shader.Find("Particles/Additive"));
		line.SetVertexCount(16);
		line.SetColors(Color.red, new Color(1,0,0,0.5f));
	}

	void DisableLine() {
		if (line) Destroy(line.gameObject);
		if (target) Destroy(target.gameObject);
	}

	void Update() {
		if (device.GetTouchDown(SteamVR_Controller.ButtonMask.Trigger)) triggerHeld = true;
		if (device.GetTouchUp(SteamVR_Controller.ButtonMask.Trigger)) triggerHeld = false;
	}

	void FixedUpdate() { 
		if (triggerHeld && !wait) {
			if (tracking!=null) {
				StopCoroutine(tracking);
				wait = false;
			}
			print("fixed");
			tracking = StartCoroutine(MovingToParabolic()); 
		}
	}


	IEnumerator MovingToParabolic() {
		wait = true;
		print("movingTo");
		EnableLine();
		while (triggerHeld) {
			var count = solverIterations;
			var direction = transform.forward;
			var origin = transform.position;
			var distance = 2f;
			for (var i=0; i<solverIterations; ++i) positions[i] = transform.position;
			yield return new WaitForFixedUpdate();
			while (0<count--) {
				//yield return new WaitForFixedUpdate();
				var raycastCount = Physics.RaycastNonAlloc(origin, origin+direction, results, distance, mask);
				for (var i=solverIterations-count; i<solverIterations; ++i) positions[i] = origin;
				Debug.DrawLine(origin, origin+direction, Color.red, 1f);
				origin = origin+direction;
				direction += Physics.gravity*Time.fixedDeltaTime + transform.forward*Time.fixedDeltaTime;
				line.SetPositions(positions);
				if (raycastCount<=0) continue;
				var query = 
					from result in results
					where result.transform!=null orderby result.distance
					select result;
				if (!query.Any()) continue;
				NavMeshHit navHit;
				var hit = query.First();
				var navMask = 1 << NavMesh.GetAreaFromName("Room");
				if (!NavMesh.SamplePosition(hit.point, out navHit, 1f, navMask)
					&& !hit.collider.GetComponentInParent<Room>()) continue;
				var position = hit.collider.GetComponentInParent<Room>().Location.position;
				for (var i=solverIterations-count; i<solverIterations; ++i) positions[i] = position;
				line.SetPositions(positions);
				//var position = navHit.position+(navHit.normal*0.1f);
				var rotation = Quaternion.LookRotation(navHit.position+navHit.normal);
				if (!target) target = (Instantiate(prefab) as GameObject).transform;
				target.transform.position = position;
				target.transform.rotation = rotation;
				SendLineCircle(target.GetComponent<LineRenderer>());
				break;
			}
		} 
		if (target && radius<Vector3.Distance(target.position, transform.position)) Goto(target);
		DisableLine();
		yield return new WaitForSeconds(0.1f);
		wait = false;
	}


	IEnumerator MovingTo() {
		wait = true;
		var position = transform.position;
		var rotation = Quaternion.LookRotation(transform.forward,Vector2.up);
		if (tracker) Destroy(tracker);
		var instance = Instantiate(disc, position, rotation) as GameObject;
		instance.GetComponentInChildren<TrailRenderer>().enabled = false;
		var rigidbody = instance.GetComponent<Rigidbody>();
		instance.transform.SetParent(transform);
		instance.transform.localPosition = Vector3.forward;
		rigidbody.isKinematic = true;
		while (triggerHeld) {
			yield return new WaitForFixedUpdate();
			device.TriggerHapticPulse(2000);
		}
		instance.GetComponentInChildren<TrailRenderer>().enabled = true;
		instance.transform.parent = null;
		rigidbody.isKinematic = false;
		rigidbody.AddForce(
			force: transform.forward*force + device.velocity,
			mode: ForceMode.VelocityChange);
		tracker = instance;
		yield return new WaitForSeconds(0.1f);
		triggerPrimed = true;
		while (!triggerHeld) yield return null;
		if (triggerHeld && wait && tracker) Goto(tracker.transform);
		triggerPrimed = false;
		wait = false;
	}

	void SendLineCircle(LineRenderer renderer) {
		var resolution = 16;
		var positions = new Vector3[resolution];
		var step = 2*Mathf.PI/resolution;
		for (var i=0; i<resolution; ++i)
			positions[i] = new Vector3 {
			x = Mathf.Cos(i*step),
			y = 0.1f,
			z = Mathf.Sin(i*step)};
		renderer.SetWidth(0.25f,0.25f);
		renderer.SetVertexCount(resolution);
		renderer.SetPositions(positions);
	}


	void Goto(Transform location) {
		if (!location) return;
		var nearby = new Collider[1];
		Physics.OverlapSphereNonAlloc(location.position+Vector3.up*2f,2f,nearby);
		if (!nearby.ToList().Any()) return;
		player.transform.position = location.position;
		StopCoroutine(tracking);
		wait = false;
		if (tracker) Destroy(tracker);
	}

}

