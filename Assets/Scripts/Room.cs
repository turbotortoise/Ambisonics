using UnityEngine;
using System.Collections;

public class Room : MonoBehaviour {
	
	public Transform Location {get;protected set;}
	void Awake() { Location = transform.Find("location"); }

}
