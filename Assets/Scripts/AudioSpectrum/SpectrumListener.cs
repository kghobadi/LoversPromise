using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using Random = UnityEngine.Random;

/// <summary>
/// Allows an object to listen to certain octave bands from the Audio Spectrum and react to them with Particle Fx & Animations. 
/// </summary>
public class SpectrumListener : MonoBehaviour 
{
    AudioSpectrum spectrum;
    private Animator animator;
    public int[] octaveBands;
    public float levelMin;

    public bool showRhythm;

    public ParticleSystem[] particleFx;
    public bool cycleParticles;
    public int fxCounter = 0;

    public bool hasReset;
    float resetTimer;
    public float resetMin, resetMax;

    private void Awake()
    {
        spectrum = FindObjectOfType<AudioSpectrum>();
        animator = GetComponent<Animator>();
        if (particleFx == null)
        {
            particleFx = GetComponentsInChildren<ParticleSystem>();
        }
    }
    void Start ()
    {
        //levelMin = ppTime.globalLevelMin;
        //octaveBand = Random.Range(0, 9);
    }
	void Update () 
    {
        CompareLevels();

        //levelMin = ppTime.globalLevelMin;
        //for showing smoke when a note is destined to play
        if (showRhythm)
        {
            if(animator)
                animator.SetTrigger("Play");
           
            showRhythm = false;

            resetTimer = Random.Range(resetMin, resetMax);
            hasReset = true;

            if (cycleParticles)
            {
                particleFx[fxCounter].Play();
                if (fxCounter < particleFx.Length - 1)
                {
                    fxCounter++;
                }
                else
                {
                    fxCounter = 0;
                }
            }
            else
            {
                foreach (var fx in particleFx)
                {
                    fx.Play();
                }
            }
        }
    }

    /// <summary>
    /// Has countdown and compares levels when necessary, then calls changeVidClip
    /// </summary>
    void CompareLevels()
    {
        //Debug.Log("compared");
        if (hasReset)
        {
            resetTimer -= Time.deltaTime;

            if (resetTimer < 0)
            {
                hasReset = false;
            }
        }

        foreach (var band in octaveBands)
        {
            if (spectrum.MeanLevels[band] > levelMin )
            {
                if (!hasReset)
                {
                    showRhythm = true;
                }
            }
        }
    }
}
