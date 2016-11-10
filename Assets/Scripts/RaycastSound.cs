using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public struct RaycastSound {

	public float distance;
	public float time;
	public float volume;

	public float pitch;
	//public float timbre;
	//public float dampening;
	//public float attenuation;

	public Vector3 position;

	public RaycastSound(
					float distance, 
					float time, 
					float volume, 
					Color color, 
					Vector3 position) {
		this.distance = distance;
		this.time = time;
		this.volume = volume;
		this.pitch = color.grayscale;
		//this.timbre = color.g;
		//this.dampening = color.b;
		//this.attenuation = color.a;
		this.position = position;
	}
}
