using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//can lerp color values of the skybox 
public class LerpSkyboxColor : MonoBehaviour
{  
    //spectrum ref
    //Sun sun;
    Material origSkybox;

    [HideInInspector]
    public Material activeSkybox;
    [Header("Skybox Lerp Settings")]
    public float lerpSpeed;
    public bool lerping;
    public bool hasLerped;
    public string colorToLerp;
    Color origValue;
    Color startValue;
    public Color lerpValue;
    public Color endValue;

    void Awake()
    {
        //sun = GetComponent<Sun>();
    }

    void Start()
    {
        activeSkybox = RenderSettings.skybox;
        origSkybox = activeSkybox;
        origValue = RenderSettings.skybox.GetColor(colorToLerp);
    }

    void Update()
    {
        //lerp is under way!
        if (lerping)
        {
            //change mat Tp value 
            lerpValue = Color.Lerp(lerpValue, endValue, Time.deltaTime * lerpSpeed);

            //set float to lerp val
            RenderSettings.skybox.SetColor(colorToLerp, lerpValue);
            //dist by abs value of lerpVal subtracted from end val
            float distR = Mathf.Abs(endValue.r - lerpValue.r);
            float distG = Mathf.Abs(endValue.g - lerpValue.g);
            float distB = Mathf.Abs(endValue.b - lerpValue.b);
            //avg
            float avgDist = (distR + distG + distB) / 3;

            //close enough, let's finish im
            if (avgDist < 0.0001f)
            {
                //hard set float to end value
                activeSkybox.SetColor(colorToLerp, endValue);

                //stop lerping
                lerping = false;
            }
        }

    }

    //call to begin lerp 
    public void Lerp(Color desiredValue, float speed)
    {
        startValue = RenderSettings.skybox.GetColor(colorToLerp);
        activeSkybox = RenderSettings.skybox;
        lerpValue = startValue;
        endValue = desiredValue;
        lerpSpeed = speed;
        lerping = true;
        hasLerped = true;
    }

    void OnDisable()
    {
        if(RenderSettings.skybox == origSkybox && hasLerped)
            RenderSettings.skybox.SetColor(colorToLerp, startValue);
        else
            origSkybox.SetColor(colorToLerp, origValue);
    }
}
