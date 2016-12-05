using UnityEngine;
using UnityEngine.VR;
using System.Linq;
using System.Collections;
using System.Collections.Generic;

public class PlayerSelector : MonoBehaviour {

	public GameObject prefabOculus;
	public GameObject prefabOpenVR;

	public bool IsAmbisonic, IsBinaural;

	Dictionary<string,GameObject> prefabs =
		new Dictionary<string,GameObject>();

	void Awake() {
		prefabs ["OpenVR"] = prefabOpenVR;
		prefabs ["Oculus"] = prefabOculus;
		var isBypassed = false;
		if (IsAmbisonic || IsBinaural)
			Object.FindObjectsOfType<AudioSource>().ToList()
				.ForEach(sound => sound.enabled = false); 
		if (isBypassed && prefabs.ContainsKey(VRSettings.loadedDeviceName))
			Create (prefabs [VRSettings.loadedDeviceName]);		
	}

	void Create(GameObject prefab) {
		foreach (Transform child in transform)
			Destroy (child.gameObject);
		var instance = Instantiate (
			prefab,
			transform.position,
			transform.rotation) as GameObject;
		instance.transform.parent = transform;
	}

}
