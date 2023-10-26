using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Lets us know how many animals have been petted by the player throughout the level.
/// </summary>
public class AnimalMgr : NonInstantiatingSingleton<AnimalMgr>
{
    protected override AnimalMgr GetInstance(){ return this; }
    
    public PetAnimal[] allAnimals;
    public int pettedCount;
    public GameObject levelExit;
    public bool playerCanExit;
#if UNITY_EDITOR
    private void OnValidate()
    {
        allAnimals = FindObjectsOfType<PetAnimal>();
    }
#endif

    private void Start()
    {
        levelExit.SetActive(false);
    }

    public void CheckPettedCount()
    {
        int petted = 0;
        foreach (var animal in allAnimals)
        {
            if (animal.hasBeenPetted)
            {
                petted++;
            }
        }

        pettedCount = petted;
        if (pettedCount >= allAnimals.Length)
        {
            ActivateLevelExit();
        }
    }

    void ActivateLevelExit()
    {
        playerCanExit = true;
        levelExit.SetActive(true);
    }
}
