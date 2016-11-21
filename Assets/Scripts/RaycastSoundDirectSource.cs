using UnityEngine;
using System.Linq;
using System.Collections;
using System.Collections.Generic;

public class RaycastSoundDirectSource : MonoBehaviour {

    LayerMask layerMask;
    [SerializeField] string soundName;
    [SerializeField] GameObject listener;

    public RaycastSound sound {get; protected set;}

    void Awake() {
        layerMask = 1 << LayerMask.NameToLayer("Sound");
        sound = new RaycastSound {
            name = soundName,
            time = 0.1f,
            volume = 1f,
            absorption = 0f,
            roughness = 0f,
            occlusion = 0f,
            attenuation = 0f,
            position = listener.transform.position - transform.position };
    }


    void FixedUpdate() {
        var direction = listener.transform.position-transform.position;
        var distance = Vector3.Distance(transform.position, listener.transform.position);
        var ray = new Ray(transform.position, direction);

        var hits = Physics.RaycastAll(ray, distance, layerMask);
        sound = new RaycastSound {
            name = soundName,
            time = 0.1f,
            volume = 1f,
            absorption = 0f,
            roughness = 0f,
            occlusion = 0f,
            attenuation = (hits.Length>1)?1f:0f,
            position = listener.transform.position - transform.position };


        //#if _DEBUG
        var nearest = ray.GetPoint(distance);
        //if (list.Any()) nearest = hit.point;
        DebugLine.DrawLine(ray.origin,nearest,Color.red,Color.red,10f,1f);
        //#endif
    }

}
