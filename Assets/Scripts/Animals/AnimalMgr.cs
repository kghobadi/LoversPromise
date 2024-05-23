using System;
using System.Collections;
using System.Collections.Generic;
using NPC;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

/// <summary>
/// Lets us know how many animals have been petted by the player throughout the level.
/// </summary>
public class AnimalMgr : NonInstantiatingSingleton<AnimalMgr>
{
    protected override AnimalMgr GetInstance(){ return this; }
    [SerializeField] private FirstPersonController playerFarmer;
    public FirstPersonController PlayerController => playerFarmer;
    
    public PetAnimal[] allAnimals;
    public int pettedCount;
    public int sleepingCount;
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
    
    /// <summary>
    /// Allows us to exit the level if we have walked every animal to its sleeping place and it's time for night night. 
    /// </summary>
    public void CheckSleepingCount()
    {
        int sleeping = 0;
        //loop through all animals
        foreach (var animal in allAnimals)
        {
            //check if they were pet 
            if (animal.AnimalController.Movement.currentBehavior.movementType == Movement.NPCMovementTypes.SLEEP)
            {
                sleeping++;
            }
        }

        sleepingCount = sleeping;
        if (sleepingCount >= allAnimals.Length)
        {
            ActivateLevelExit();
        }
    }
    /// <summary>
    /// Allows us to exit the level if we have petted every animal. 
    /// </summary>
    public void CheckPettedCount()
    {
        //will store animals left 
        List<string> animalsNeedingPets = new List<string>();
        int petted = 0;
        //loop through all animals
        foreach (var animal in allAnimals)
        {
            //check if they were pet 
            if (animal.hasBeenPetted)
            {
                petted++;
            }
            else
            {
                //add to animal name list 
                animalsNeedingPets.Add(animal.gameObject.name);
            }
        }

        pettedCount = petted;
        //get animals left count 
        int animalsLeft = allAnimals.Length - pettedCount;
        if (pettedCount >= allAnimals.Length)
        {
            ActivateLevelExit();
        }

        //Tells us how many and which animals are left
        if (animalsLeft < 5)
        {
            Debug.LogFormat("Animals left: {0}", animalsLeft);
            foreach (var animal in animalsNeedingPets)
            {
                Debug.LogFormat("Please Pet: {0}", animal);
            }
        }
    }

    void ActivateLevelExit()
    {
        playerCanExit = true;
        levelExit.SetActive(true);
    }
}
