using UnityEngine;
using System.Linq;
using System.Collections;
using System.Collections.Generic;

public class Room : MonoBehaviour {
	List<Collider> colliders = new List<Collider>();

	public bool IsCurrent {
		get { return colliders.FirstOrDefault().enabled; } 
		set { colliders.ForEach(collider => collider.enabled = !value); } }

	public Transform Location {get;protected set;}

	void Awake() {
		colliders = GetComponentsInChildren<Collider>().ToList();
		Location = transform.Find("location"); 
	}
}
