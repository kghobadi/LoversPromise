using System.Collections;
using System.Collections.Generic;
using NPC;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

/// <summary>
/// Makes follower animals go to bed at their bed station. 
/// </summary>
public class AnimalBedTrigger : MonoBehaviour
{
    public bool usesAnimalType;
    public Movement.AnimalType animalType;
    [Tooltip("The behavior which will be assigned to this NPC Animal on trigger.")]
    public MovementPath bedBehavior;

    public float randomRadius = 15f;
    public Transform[] bedSpots;

    protected void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Animal"))
        {
            CheckAnimalGoToBed(other.gameObject);
        }
    }

    void CheckAnimalGoToBed(GameObject other)
    {
        Movement animalMove = other.GetComponent<Movement>();
        if (animalMove)
        {
            //must be following
            if (animalMove.currentBehavior.movementType == Movement.NPCMovementTypes.FOLLOWPLAYER ||
                animalMove.currentBehavior.movementType == Movement.NPCMovementTypes.FOLLOWER)
            {
                //Early return if we use the animal type
                if (usesAnimalType && animalMove.animalType != animalType)
                {
                    return;
                }
                SetGoToBed(animalMove);
            }
        }
    }

    /// <summary>
    /// Move to random radius within bed spot 
    /// </summary>
    /// <param name="animalMove"></param>
    void SetGoToBed(Movement animalMove)
    {
        Transform randomSpot = bedSpots[Random.Range(0, bedSpots.Length)];
        animalMove.SetRandomDestinationAtPosition(randomSpot.position, randomRadius);
        animalMove.ResetMovement(bedBehavior);
    }
}