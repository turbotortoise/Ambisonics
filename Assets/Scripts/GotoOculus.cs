using UnityEngine;
using System.Linq;
using System.Collections;

public class GotoOculus : MonoBehaviour {

	bool wait, triggerHeld;
	LayerMask mask;
	GameObject player;
	Room currentRoom;
	[SerializeField] GameObject headTracker;
	[SerializeField] AudioClip footstep;

	void Awake() {
		player = GameObject.FindGameObjectWithTag("Player"); 
		mask = 1 << LayerMask.NameToLayer("Room");
	}

	void FixedUpdate() {
		var hits = Physics.RaycastAll(
			new Ray(transform.position, headTracker.transform.forward), 
			20f, mask, QueryTriggerInteraction.Collide);
		if (hits.Length<=0) return;
		var list = 
			from hit in hits
			where hit.transform!=null orderby hit.distance ascending
			select hit;
		if (!list.Any()) return;
		if (triggerHeld)
			MoveTo(list.First().transform.GetComponentInParent<Room>());
	}


	void Update () {
		if (OVRInput.GetDown(OVRInput.Button.One)) triggerHeld = true;
		else if (OVRInput.GetUp(OVRInput.Button.One)) triggerHeld = false;
	}

	void MoveTo(Room room) { if (!wait && room) StartCoroutine(MovingTo(room)); }

	IEnumerator MovingTo(Room room) {
		wait = true;
		if (currentRoom) currentRoom.IsCurrent = false;
		player.transform.position = room.Location.position;
		AudioSource.PlayClipAtPoint(footstep,transform.position);
		currentRoom = room;
		currentRoom.IsCurrent = true;
		yield return new WaitForSeconds(0.4f);
		wait = false;
	}
}
