using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//this script allows you to lerp the color values of your Sun light and Ambient light
//generally should be called from Sun script at different times of day. 
public class LerpLighting : MonoBehaviour
{
    Light sunLight;

    [Header("Lighting Options")]
    public Color sunScary;
    public Color sunNice;
    public Color ambientScary, ambientNice;

    public bool lerping;
    public float lerpSpeed = 0.1f;

    Color sunC;
    Color ambientC;
    Material skyboxC;
  
    void Awake()
    {
        sunLight = GetComponent<Light>();
    }

    void Update()
    {
        //lerp the values!
        if (lerping)
        {
            sunLight.color = Color.Lerp(sunLight.color, sunC, Time.deltaTime * lerpSpeed);
            //RenderSettings.ambientLight = Color.Lerp(RenderSettings.ambientLight, ambientC, Time.deltaTime * lerpSpeed);
        }
    }

    //can be called publicly to set a lerp to these colors 
    public void SetLightLerp(Color sun, Color ambient)
    {
        //set lerp vals
        sunC = sun;
        ambientC = ambient;

        lerping = true;
    }
}
