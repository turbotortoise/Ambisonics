using UnityEngine;
using System.Collections;

public class Room : MonoBehaviour {

	new Collider collider;

	public bool IsCurrent {
		get { return collider.enabled; } 
		set { collider.enabled = value; }}

	public Transform Location {get;protected set;}

	void Awake() { 
		collider = GetComponentInChildren<Collider>();
		Location = transform.Find("location"); 
	}

}
