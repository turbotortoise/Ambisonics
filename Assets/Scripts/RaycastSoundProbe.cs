using UnityEngine;
using System.Linq;
using System.Collections;
using System.Collections.Generic;

public class RaycastSoundProbe : MonoBehaviour {

    LayerMask layerMask;
    [SerializeField] bool seed;
    [SerializeField] int maxRaycasts = 32;
    [SerializeField] int resolution = 1024;
    [SerializeField] float volume = 32f;
    [SerializeField] float range = 64f;
    [SerializeField] float distance = 4f;
    [SerializeField] Color color = Color.green;

    IEnumerator Start() {
        layerMask = 1 << LayerMask.NameToLayer("Sound");
        var rays = 0;
        while (true) {
            rays = 0;
            while (rays<resolution) {
                if (seed)
                    Random.InitState(transform.position.GetHashCode());
                var rayCount = maxRaycasts;
                rays += rayCount;
                while (--rayCount>0)
                    StartCoroutine(BouncingSound(
                        volume: volume,
                        distance: distance,
                        color: color,
                        ray: new Ray(
                            origin: transform.position,
                            direction: Random.onUnitSphere)));
                yield return new WaitForSeconds(0.5f);
            } yield return new WaitForSeconds(10f);
        }
    }


    IEnumerator BouncingSound(
                    float volume,
                    float distance,
                    Color color,
                    Ray ray) {
        if (volume<=0) yield break;
        if ((transform.position-ray.origin).sqrMagnitude>range*range)
            yield break;
        yield return new WaitForFixedUpdate();
        var hits = Physics.RaycastAll(ray, distance, layerMask);
        var list = hits.OrderBy(hit => hit.distance);
        var nextColor = Color.Lerp(
            color, new Color(color.r, color.g, color.b, 0), 0.5f);
		var nearest = ray.GetPoint(distance);
        if (list.Any()) {
            var hit = list.First();
            var renderer = hit.transform.GetComponent<Renderer>();
            var tex = renderer.material.mainTexture as Texture2D;
			if (list.Any()) nearest = hit.point;
            if (tex==null)
                (tex = new Texture2D(1,1)).SetPixel(0,0,
                    renderer.material.color);
            var coords = Vector2.Scale(
                hit.textureCoord,
                new Vector2(tex.width, tex.height));
            var texel = tex.GetPixel((int) coords.x, (int) coords.y);
            nextColor = Color.Lerp(nextColor, texel, 0.5f);
            yield return StartCoroutine(BouncingSound(
                volume: CalculateDampening(volume,texel.grayscale),
                distance: distance,
                color: nextColor,
                ray: new Ray(
                    origin: hit.point,
                    direction: Vector3.Reflect(
                        inDirection: ray.direction+ray.origin,
                        inNormal: hit.normal))));
        } else yield return StartCoroutine(BouncingSound(
            volume: CalculateDiffusion(volume),
            distance: distance,
            color: nextColor,
            ray: new Ray(
                origin: ray.GetPoint(distance),
                direction: ray.direction)));
		//#if _DEBUG
		
        DebugLine.DrawLine(ray.origin,nearest,color,nextColor,10f,1f);
		//#endif
    }


    static float CalculateDampening(float volume, float absorption) {
        return volume - volume*absorption - 0.5f; }

    static float CalculateDiffusion(float volume) { return volume-1; }


}
