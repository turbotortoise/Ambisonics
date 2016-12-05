using UnityEngine;
using System.Linq;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(AudioSource))]
public class RaycastSoundEmitter : MonoBehaviour {
	const float speedOfSound = 343.2f; // m/s
	new AudioSource audio;
	Transform listener;
	public RaycastSound sound {get; protected set;}

	void Awake() {
		audio = GetComponent<AudioSource>();
		listener = Camera.main.GetComponent<AudioListener>().transform;
	}

	IEnumerator Start() {
		var layerMask = ~(1 << LayerMask.NameToLayer("Sound"));
		var lowpass = audio.outputAudioMixerGroup.audioMixer.FindSnapshot("Occlusion");
		var snapshot = audio.outputAudioMixerGroup.audioMixer.FindSnapshot("Snapshot");
		var updateInstruction = new WaitForFixedUpdate();
		var position = listener.position - transform.position;
		var distance = Vector3.Distance(listener.position, transform.position);
		var ray = new Ray(transform.position, position);
		var hits = Physics.RaycastAll(ray, distance, layerMask);
		var attenuation = 0f;
		var occlusion = 0.3f;
		while (true) {
			yield return updateInstruction;
			position = listener.position - transform.position;
			distance = Vector3.Distance(listener.position, transform.position);
			ray = new Ray(transform.position, position);
			hits = Physics.RaycastAll(ray, distance, layerMask);
			attenuation = hits.Length/10f;
			if (0<hits.Length) lowpass.TransitionTo(occlusion);
			else snapshot.TransitionTo(occlusion);
			//print(hits.Length);
			sound = new RaycastSound(
				name: name,
				time: distance/speedOfSound,
				volume: audio.volume,
				absorption: 0f,
				roughness: 0f,
				occlusion: occlusion,
				attenuation: attenuation,
				position: position);
		}
	}
}
