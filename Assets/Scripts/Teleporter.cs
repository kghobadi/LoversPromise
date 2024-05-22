using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// A simple teleportation class with an effect.
/// </summary>
public class Teleporter : MonoBehaviour
{
    [SerializeField] private bool useFx = true;
    [SerializeField] private ParticleSystem teleportEffect;
    private ParticleSystem.MainModule teleportMain;

    private void Awake()
    {
        teleportMain = teleportEffect.main;
    }

    public void TeleportToTransform(Transform newPlace) => TeleportToPosition(newPlace.position);
    
    public void TeleportToPosition(Vector3 newPosition)
    {
        if (useFx)
        {
            StartCoroutine(TeleportEffect(newPosition));
        }
        else
        {
            transform.position = newPosition;
        }
    }

    /// <summary>
    /// Teleports with effect.
    /// </summary>
    /// <param name="spot"></param>
    /// <returns></returns>
    IEnumerator TeleportEffect(Vector3 spot)
    {
        teleportEffect.Play();

        yield return new WaitForSeconds(teleportMain.duration);

        transform.position = spot;
        
        teleportEffect.Play();
    }
}
