//
//	  UnityOSC - Example of usage for OSC receiver
//
//	  Copyright (c) 2012 Jorge Garcia Martin
//
// 	  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
// 	  documentation files (the "Software"), to deal in the Software without restriction, including without limitation
// 	  the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
// 	  and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
// 	  The above copyright notice and this permission notice shall be included in all copies or substantial portions
// 	  of the Software.
//
// 	  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
// 	  TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
// 	  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
// 	  CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// 	  IN THE SOFTWARE.
//

using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityOSC;

public class oscControl : MonoBehaviour {

	private Dictionary<string, ServerLog> servers;
	//private Dictionary<string, ClientLog> clients;

	[SerializeField] List<GameObject> things;

	void Start() {
		OSCHandler.Instance.Init(); //init OSC
		servers = new Dictionary<string, ServerLog>();
		//clients = new Dictionary<string,ClientLog> ();
	}



	List<float> FlattenSoundData(RaycastSound sound) {
		var list = new List<float> ();
		list.Add (sound.distance);
		list.Add (sound.time);
		list.Add (sound.volume);
		list.Add (sound.pitch);
		list.Add (sound.position.x);
		list.Add (sound.position.y);
		list.Add (sound.position.z);
		return list;
	}



	// NOTE: The received messages at each server are updated here
    // Hence, this update depends on your application architecture
    // How many frames per second or Update() calls per frame?
	void Update() {

		OSCHandler.Instance.UpdateLogs();
		//var val = new byte[]{176,8,0};

		servers = OSCHandler.Instance.Servers;
		//clients = OSCHandler.Instance.Clients;

		//OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "list:", new List<float> { 0.2f, 0.4f, 0.5f, -2.1f });
		var list = new List<RaycastSound> {
			new RaycastSound (
				distance: 2f,
				time: 1.3f,
				volume: 0.1f,
				color: Color.gray,
				position: Vector3.one),
			new RaycastSound (
				distance: -12f,
				time: 0.3f,
				volume: 0.5f,
				color: Color.red,
				position: Vector3.zero)
		};

		for (var i=0; i<list.Count; ++i)
			OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "list:raycast:"+i+":", FlattenSoundData(list[i]));

		foreach (var thing in things) {
			OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", thing.name + "positionx:", thing.transform.position.z);
			OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", thing.name + "positiony:", thing.transform.position.y);
			OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", thing.name + "positionz:", -thing.transform.position.x);
		}

		//OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "rotationx:", transform.rotation.x);
		//OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "rotationy:", transform.rotation.y);
		//OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "rotationz:", transform.rotation.z);
			//OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "positiony:", transform.position.y);
			//OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "positionz:", transform.position.z);
			if (Input.GetKey("space")) {
				OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "footstep:", 1);
			}
			else {
				//OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "footstep:", 0);
			}
		print("packet sent");
		//}
		//OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "int", 5);
		OSCHandler.Instance.UpdateLogs();

		foreach (KeyValuePair<string, ServerLog> item in servers) {
			// If we have received at least one packet,
			// show the last received from the log in the Debug console
			if (item.Value.log.Count > 0) {
				int lastPacketIndex = item.Value.packets.Count - 1;

				//UnityEngine.Debug.Log (String.Format ("SERVER: {0} ADDRESS: {1} VALUE : {2}",
				//	                                    item.Key, // Server name
				//	                                    item.Value.packets [lastPacketIndex].Address, // OSC address
				//	                                    item.Value.packets [lastPacketIndex].Data [0].ToString ())); //First data value

				//converts the values into MIDI to scale the cube
				float tempVal = float.Parse (item.Value.packets [lastPacketIndex].Data [0].ToString ());
				transform.localScale = new Vector3 (tempVal, tempVal, tempVal);
			}
		}

		//foreach( var item in clients ) {
			// If we have sent at least one message,
			// show the last sent message from the log in the Debug console
			//if(item.Value.log.Count > 0)
			//{
			//	int lastMessageIndex = item.Value.messages.Count- 1;
			//	//int lastMessageIndex = 5;
			//
			//	UnityEngine.Debug.Log(String.Format("CLIENT: {0} ADDRESS: {1} VALUE 0: {2}",
			//	                                    item.Key, // Server name
			//	                                    item.Value.messages[lastMessageIndex].Address, // OSC address
			//	                                    item.Value.messages[lastMessageIndex].Data[0].ToString())); //First data value
			//
			//}
			//var randval = UnityEngine.Random.value;
			//OSCHandler.Instance.SendMessageToClient ("TouchOSC Bridge", "", randval);
			//OSCHandler.Instance.UpdateLogs();
			//print("sent " + randval + " message to client");
		//}
	}
}
