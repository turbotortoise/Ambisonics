
using UnityEngine;
using System.Collections;

public class DebugLine : MonoBehaviour {

    float lifetime = float.MaxValue;

    IEnumerator Start() {
        yield return new WaitForSeconds(lifetime);
        Destroy(transform.gameObject);
    }


    public static void DrawRay(Vector3 start, Vector3 dir) {
        DebugLine.DrawLine(start, start + dir, Color.white, Color.white); }

    public static void DrawRay(
                    Vector3 start,
                    Vector3 dir,
                    Color color,
                    Color endColor,
                    float duration=0,
                    float width=1) {
        DebugLine.DrawLine(start,start+dir,color,endColor,duration,width); }

    public static void DrawLine(Vector3 start, Vector3 end) {
        DebugLine.DrawLine(start, end, Color.white, Color.white); }

    public static void DrawLine(
                    Vector3 start,
                    Vector3 end,
                    Color color,
                    Color endColor,
                    float duration=0,
                    float width=1,
                    Material material=null) {
        if (!Camera.main) return;
        if (!material)
            material = new Material(Shader.Find("Particles/Additive"));
        var instance = new GameObject("sound ray");
        var line = instance.AddComponent<LineRenderer>();
        line.material = material;
        line.SetPosition(0, start);
        line.SetPosition(1, end);
        line.SetColors(color, endColor);
        line.SetWidth(DebugLine.CalcPixelHeightAtDist(
            (start-Camera.main.transform.position).magnitude) * width,
            DebugLine.CalcPixelHeightAtDist(
                (end-Camera.main.transform.position).magnitude) * width);
        instance.AddComponent<DebugLine>().lifetime = duration;
    }

    static float CalcPixelHeightAtDist(float dist) {
        if (!Camera.main) return 0;
        var frustumHeight = 2 * dist * Mathf.Tan(
            Camera.main.fieldOfView * 0.5f * Mathf.Deg2Rad);
        return frustumHeight / Camera.main.pixelHeight;
    }
}
