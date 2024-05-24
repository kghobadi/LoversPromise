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
    public Movement.AnimalType animalType;
    [Tooltip("The behavior which will be assigned to this NPC Animal on trigger.")]
    public MovementPath bedBehavior;

    public float randomRadius = 15f;
    public Transform[] bedSpots;

    protected void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Animal"))
        {
            SetAnimalGoToBed(other.gameObject);
        }
    }

    void SetAnimalGoToBed(GameObject other)
    {
        Movement animalMove = other.GetComponent<Movement>();
        if (animalMove)
        {
            //must be following
            if (animalMove.currentBehavior.movementType == Movement.NPCMovementTypes.FOLLOWPLAYER ||
                animalMove.currentBehavior.movementType == Movement.NPCMovementTypes.FOLLOWER)
            {
                //Is it the desired animal? GO TO BED
                if (animalMove.animalType == animalType)
                {
                    //move to random radius within bed spot 
                    Transform randomSpot = bedSpots[Random.Range(0, bedSpots.Length)];
                    animalMove.SetRandomDestinationAtPosition(randomSpot.position, randomRadius);
                    animalMove.ResetMovement(bedBehavior);
                }
            }
        }
    }
}