using UnityEngine;
using System.Linq;
using System.Collections;
using System.Collections.Generic;


public class RaycastSoundEmitter : MonoBehaviour {

    LayerMask layerMask;
	RaycastSound[] raycastSounds;
    [SerializeField] bool seed;
    [SerializeField] int resolution = 16;
    [SerializeField] float volume = 32f;
    [SerializeField] float range = 64f;
    [SerializeField] float distance = 4f;
    [SerializeField] Color color = Color.green;
	[SerializeField] GameObject player;

	public RaycastSound sound {
		get {
			return new RaycastSound (
				name: "sound1",
				time: 0.1f,
				volume: 1f,
				color: Color.clear,
				position: player.transform.position - transform.position);
			}
	}

	void Awake() {
		layerMask = 1 << LayerMask.NameToLayer("Sound");	
		raycastSounds = new RaycastSound[resolution];
	}

    void Start1() {
		if (seed)
			Random.InitState(transform.position.GetHashCode());
		var rays = 0;
		while (rays++ < resolution) 
	        raycastSounds[rays] = ComputeSound(
	            volume: volume,
	            distance: distance,
	            color: color,
	            ray: new Ray(
	                origin: transform.position,
	                direction: Random.onUnitSphere));
    }

	void FixedUpdate() {
		
	}



	RaycastSound ComputeSound(
                    float volume,
                    float distance,
                    Color color,
                    Ray ray) {
		if (volume <= 0)
			return (default (RaycastSound));
		if ((transform.position - ray.origin).sqrMagnitude > range * range)
			return (default (RaycastSound));
        //yield return new WaitForFixedUpdate();
        var hits = Physics.RaycastAll(ray, distance, layerMask);
        var list = hits.OrderBy(hit => hit.distance);
        var nextColor = Color.Lerp(
            color, new Color(color.r, color.g, color.b, 0), 0.5f);
        if (list.Any()) {
            var hit = list.First();
            var renderer = hit.transform.GetComponent<Renderer>();
            var tex = renderer.material.mainTexture as Texture2D;
            if (tex==null)
                (tex = new Texture2D(1,1)).SetPixel(0,0,
                    renderer.material.color);
            var coords = Vector2.Scale(
                hit.textureCoord,
                new Vector2(tex.width, tex.height));
            var texel = tex.GetPixel((int) coords.x, (int) coords.y);
            nextColor = Color.Lerp(nextColor, texel, 0.5f);
			return ComputeSound(
                volume: CalculateDampening(volume,texel.grayscale),
                distance: distance,
                color: nextColor,
                ray: new Ray(
                    origin: hit.point,
                    direction: Vector3.Reflect(
                        inDirection: ray.direction+ray.origin,
                        inNormal: hit.normal)));
		} return ComputeSound(
            volume: CalculateDiffusion(volume),
            distance: distance,
            color: nextColor,
            ray: new Ray(
                origin: ray.GetPoint(distance),
                direction: ray.direction));
    }


    static float CalculateDampening(float volume, float absorption) {
        return volume - volume*absorption - 0.5f; }

    static float CalculateDiffusion(float volume) { return volume-1; }


}
