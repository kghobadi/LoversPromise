using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LerpScale : MonoBehaviour {
    [Header("Lerp scale")]
    [Tooltip("These 3 variables get set when the Set Scaler function is called, do not set them")]
    public bool lerping;
    public float lerpSpeed;
    public Vector3 desiredScale;
    public float necDist = 0.1f;
    [HideInInspector]
    public Vector3 origScale;
    [Header("Scale at start")]
    public bool setScaleAtStart;
    [Tooltip("This will scale the object by this factor, i.e. scale x 0.1f")]
    public float startMultiplier;

    void Start()
    {
        origScale = transform.localScale;

        if (setScaleAtStart)
        {
            transform.localScale *= startMultiplier;
        }
    }

    void Update () 
    {
        if (lerping)
        {
            transform.localScale = Vector3.Lerp(transform.localScale, desiredScale, Time.deltaTime * lerpSpeed);

            if (Vector3.Distance(transform.localScale, desiredScale) < necDist)
            {
                lerping = false;
            }
        }
    }

    //can be called from anywhere 
    public void SetScaler(float speed, Vector3 newScale)
    {
        desiredScale = newScale;
        lerpSpeed = speed;
        lerping = true;
    }


    //LERPS
    //can be called from anywhere 
    public void SetLerp()
    {
        lerping = true;
    }
    //set lerp with new scale
    public void SetLerpV(Vector3 newScale)
    {
        desiredScale = newScale;
        lerping = true;
    }
    //set lerp with new scale factor
    public void SetLerpVM(float scaleFactor)
    {
        desiredScale = transform.localScale * scaleFactor;
        lerping = true;
    }
    //set lerp with new speed
    public void SetLerpS(float speed)
    {
        lerpSpeed = speed;
        lerping = true;
    }
    //can be called from anywhere 
    public void SetLerpAll(float speed, Vector3 newScale)
    {
        desiredScale = newScale;
        lerpSpeed = speed;
        lerping = true;
    }
}
