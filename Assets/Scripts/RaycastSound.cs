using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public struct RaycastSound {

	public float time;
	public float volume;

	public float absorption;
	public float roughness;
	public float occlusion;
	public float attenuation;

	public string name;

	public Vector3 position;

	public RaycastSound(
					float time,
					float volume,
					string name,
					Color color,
					Vector3 position) : this(
			time: time,
			volume: volume,
			name: name,
			absorption: color.r,
			roughness: color.g,
			occlusion: color.b,
			attenuation: color.a,
			position: position) { }

	public RaycastSound(
					float time,
					float volume,
					string name,
					float absorption,
					float roughness,
					float occlusion,
					float attenuation,
					Vector3 position) {
		this.time = time;
		this.volume = volume;
		this.absorption = absorption;
		this.roughness = roughness;
		this.occlusion = occlusion;
		this.attenuation = attenuation;
		this.name = name;
		this.position = position;
	}

}
