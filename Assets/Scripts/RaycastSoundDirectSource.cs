using UnityEngine;
using System.Linq;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(AudioSource))]
public class RaycastSoundDirectSource : MonoBehaviour {

    LayerMask layerMask;
	new AudioSource audio;
	Transform listener;
	const float speedOfSound = 343.2f; // m/s

    public RaycastSound sound {get; protected set;}

    void Awake() {
        layerMask = 1 << LayerMask.NameToLayer("Sound");
		audio = GetComponent<AudioSource>();
		listener = Camera.main.GetComponent<AudioListener>().transform;
		var position = listener.transform.position - transform.position;
		var distance = Vector3.Distance(listener.position, transform.position);
		sound = new RaycastSound(
			name: name,
			time: distance/speedOfSound,
			volume: audio.volume,
			absorption: 0f,
			roughness: 0f,
			occlusion: 0f,
			attenuation: 0f,
			position: position);
    }


    void FixedUpdate() {
		var position = listener.position - transform.position;
		var distance = Vector3.Distance(listener.position, transform.position);
		var ray = new Ray(transform.position, position);
		var hits = Physics.RaycastAll(ray, distance, layerMask);
		var attenuation = (hits.Length>1)?1f:0f;
        sound = new RaycastSound(
            name: name,
			time: distance/speedOfSound,
			volume: audio.volume,
            absorption: 0f,
            roughness: 0f,
            occlusion: 0f,
            attenuation: attenuation,
			position: position);

        #if _DEBUG
        var nearest = ray.GetPoint(distance);
        DebugLine.DrawLine(ray.origin,nearest,Color.red,Color.red,10f,1f);
        #endif
    }

}
