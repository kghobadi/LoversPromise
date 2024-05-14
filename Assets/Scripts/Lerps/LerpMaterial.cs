using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class LerpMaterial : MonoBehaviour {

    [Header("Material values")]
    [Tooltip("MeshRenderer containing lerp material")]
    public MeshRenderer mRenderer;
    [Tooltip("MeshRenderer containing lerp material")]
    public SkinnedMeshRenderer skinMeshRenderer;
    [Tooltip("Mat/shader to lerp")]
    public Material lerpMat;
    [Tooltip("Name of float to lerp in mat/shader")]
    public string floatToLerp = "_Teleport";

    [Header("Lerp values")]
    [Tooltip("Check this to use linear movetowards instead of Lerp")]
    public bool moveTowardsOrLerp;
    [Tooltip("Check this to lerp on start")]
    public bool lerpOnStart;
    [Tooltip("True when lerping mat val")]
    public bool lerpingMat;
    [Tooltip("Check this to disable renderer at the end")]
    public bool disableOnFinish;
    [Tooltip("Check this to reset scale at end")]
    public bool resetsScale;
    [Tooltip("Check this to reset parent at end")]
    public bool resetParent;
    public bool resetOnDisable;
    private bool wasCalled;
    [Tooltip("Check this to load scene after transition")]
    public bool loadScene;
    [Tooltip("Start value = floatToLerp when Lerp is called")]
    public float startValue;
    [Tooltip("Value actively lerping to set mats float towards end value")]
    public float lerpValue;
    [Tooltip("Set publicly or when passed when Lerp is called")]
    public float endValue;
    [Tooltip("Speed of lerping value ")]
    public float lerpSpeed = 0.5f;
    
    [Header("Color Lerp")]
    [Tooltip("Check this to lerp color on start")]
    public bool lerpColorOnStart;
    [Tooltip("True when lerping mat color val")]
    public bool lerpingMatColor;
    [Tooltip("How long when lerping mat color val")]
    public float colorLerpLength = 1f;
    private float startColorTime;
    private float endColorTime;
    [Tooltip("Name of Color to lerp in mat/shader")]
    public string colorToLerp = "_Color";
    [Tooltip("Start value = colorToLerp when Lerp is called")]
    public Color startColorValue;
    [Tooltip("Value actively lerping to set mats Color towards end value")]
    public Color lerpColorValue;
    [Tooltip("Set publicly or when passed when Lerp is called")]
    public Color endColorValue;
    
    //for resetting parent + scale
    Transform origParent;
    Vector3 origScale;

    [Header("Lerp Back and Forth")] 
    [Tooltip("Enables lerp back and forth between below value range")]
    public bool lerpBackForth; // --> lbf
    private bool backOrForth; //checks which value to lerp to
    public float lbfMin, lbfMax;
    private float lbfTimer;
    [Tooltip("Amount of time between lerp back and forth behavior")]
    public float lbfTime = 1f;

    public UnityEvent eventOnFinish;
    [Tooltip("Check this if you want the event on Finish to play only once.")]
    public bool triggersOnce = true;
    private int triggerCounter = 0;

    void Awake()
    {
        if (mRenderer == null)
        {
            mRenderer = GetComponent<MeshRenderer>();
        }
        if (skinMeshRenderer == null)
        {
            skinMeshRenderer = GetComponent<SkinnedMeshRenderer>();
        }
        if(lerpMat == null)
        {
            lerpMat = mRenderer.material;
        }
    }

    //do we want to lerp on start?
    void Start ()
    {
        origParent = transform.parent;
        origScale = transform.localScale;

        if (lerpOnStart)
        {
            Lerp(endValue, lerpSpeed);
        }
        if (lerpColorOnStart)
        {
            LerpColor();
        }
	}

    //called to reset script values and then begin lerping
    public void SetLerpValues(MeshRenderer renderer, Material mat, string floatName)
    {
        mRenderer = renderer;
        lerpMat = mat;
        floatToLerp = floatName;

        lerpingMat = true;
    }

    /// <summary>
    ///Allows you to just set the speed. 
    /// </summary>
    /// <param name="speed"></param>
    public void SetLerpSpeed(float speed)
    {
        lerpSpeed = speed;
    }

    //call to begin lerp 
    public void Lerp(float desiredValue, float speed)
    {
        if(lerpMat == null)
            lerpMat = mRenderer.material;
        startValue = lerpMat.GetFloat(floatToLerp);
        lerpValue = startValue;
        endValue = desiredValue;
        lerpSpeed = speed;
        
        lerpingMat = true;
        wasCalled = true;
    }
	
    //call to begin basic lerp 
    public void LerpBasic(float desiredValue)
    {
        startValue = lerpMat.GetFloat(floatToLerp);
        lerpValue = startValue;
        endValue = desiredValue;

        lerpingMat = true;
        wasCalled = true;
    }
    
    //call to begin color lerp 
    public void LerpColor()
    {
        startColorValue = lerpMat.GetColor(colorToLerp);
        lerpColorValue = startColorValue;
        startColorTime = Time.fixedTime;
        endColorTime = startColorTime + colorLerpLength;

        lerpingMatColor = true;
        wasCalled = true;
    }

	void FixedUpdate()
    {
        //lerp back and forth 
        if (lerpBackForth)
        {
            //timer
            lbfTimer -= Time.fixedDeltaTime;
            if (lbfTimer < 0)
            {
                CheckLerpBackForth();
            }
        }
        
        //lerp is under way!
        if (lerpingMat)
        {
            //move towards
            if (moveTowardsOrLerp)
            {
                //change mat Tp value 
                lerpValue = Mathf.MoveTowards(lerpValue, endValue, Time.fixedDeltaTime * lerpSpeed);
            }
            //lerp
            else
            {
                //lerp mat Tp value 
                lerpValue = Mathf.Lerp(lerpValue, endValue, Time.fixedDeltaTime * lerpSpeed);
            }

            //set float to lerp val
            lerpMat.SetFloat(floatToLerp, lerpValue);
            //dist by abs value of lerpVal subtracted from end val
            float dist = Mathf.Abs(endValue - lerpValue);

            //close enough, let's finish im
            if (dist < 0.01f)
            {
                //hard set float to end value
                lerpMat.SetFloat(floatToLerp, endValue);
               
                EndLerp();
                
                //stop lerping
                lerpingMat = false;
            }
        }
        
        //lerp is under way!
        if (lerpingMatColor)
        {
            //get time val
            float tVal = (Time.fixedTime - startColorTime) / colorLerpLength;
            //change mat color value 
            lerpColorValue = Color.Lerp(lerpColorValue, endColorValue, tVal);

            //set float to lerp val
            lerpMat.SetColor(colorToLerp, lerpColorValue);

            //close enough, let's finish im
            if (tVal >= 0.999f)
            {
                //hard set color to end value
                lerpMat.SetColor(colorToLerp, endColorValue);
               
                EndLerp();
                
                //stop lerping
                lerpingMatColor = false;
            }
        }
    }

    void EndLerp()
    {
        //disable renderer when we finish!
        if (disableOnFinish)
        {
            DisableRenderer();
        }
        //reset parent
        if (resetParent)
        {
            ResetParent();
        }
        //resets scale
        if (resetsScale)
        {
            ResetScale();
        }
        //load
        if (loadScene)
        {
            //could load scene 
        }
                
        //invoke event 
        if (triggersOnce && triggerCounter < 1)
        {
            eventOnFinish.Invoke();
            triggerCounter++;
        }
    }

    void CheckLerpBackForth()
    {
        //true -- go forth to max
        if(backOrForth) 
            LerpBasic(lbfMax);
        //false -- go back to min
        else
            LerpBasic(lbfMin);
        
        //set bool to opposite
        backOrForth = !backOrForth;
        //reset timer 
        lbfTimer = lbfTime;
    }
    
    //can be called to disable renderer
    public void DisableRenderer()
    {
        if(mRenderer)
            mRenderer.enabled = false;
        if (skinMeshRenderer)
            skinMeshRenderer.enabled = false;
    }
    
    //can be called to Enable renderer
    public void EnableRenderer()
    {
        if(mRenderer)
            mRenderer.enabled = true;
        if (skinMeshRenderer)
            skinMeshRenderer.enabled = true;
    }

    /// <summary>
    /// Allows you to set load scene bool. 
    /// </summary>
    /// <param name="loadsScene"></param>
    public void SetSceneLoad(bool loadsScene)
    {
        loadScene = loadsScene;
    }

    //resets my parent to my start parent 
    public void ResetParent()
    {
        transform.SetParent(origParent);
    }

    //resets this object's scale
    public void ResetScale()
    {
        transform.localScale = origScale;
    }

    private void OnDisable()
    {
        if (resetOnDisable && wasCalled)
        {
            //hard set float to end value
            lerpMat.SetFloat(floatToLerp, startValue);
            //reset color 
            if (!string.IsNullOrEmpty(colorToLerp))
            {
                lerpMat.SetColor(colorToLerp, startColorValue);
            }
        }
    }
}
