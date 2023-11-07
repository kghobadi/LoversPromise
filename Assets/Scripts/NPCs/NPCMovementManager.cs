using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using NPC;

[System.Serializable]
public struct Behavior
{
    public string pathName;
    [Tooltip("Expected NPC behavior type.")]
    public Movement.NPCMovementTypes movementType;
    [Tooltip("Drop in any number of points, game objs, or empty transforms for the NPC to nav to ")]
    public Transform[] movementPoints;
    [Tooltip("For Random movement type, how far from original point the NPC may go.")]
    public float moveRadius;
    [Tooltip("If this is an IDLE move type, designate the Idle Type")]
    public Movement.IdleType idleType;
    [Tooltip("The run anim type")]
    public Movement.MoveType moveType;
    [Tooltip("For follower NPC behavior")]
    public Transform followObject;
    [Tooltip("For follower NPC behavior")]
    public Transform lookAt;
    [Tooltip("For pathfinder NPC behavior")]
    public bool checksAgainstPlayer;
}

/// <summary>
/// Stores a list of movement paths for the MovementPath scriptable objs to reference 
/// </summary>
public class NPCMovementManager : NonInstantiatingSingleton<NPCMovementManager>
{
    // impl for NonInstantiatingSingleton
    protected override NPCMovementManager GetInstance() { return this; }

    public Behavior[] movementPaths;

    public Transform[] lookAtObjects;

    public Controller[] npcControllers;
    
#if UNITY_EDITOR
    private void OnValidate()
    {
        //get all npc controllers in the scene. 
        npcControllers = FindObjectsOfType<Controller>();
    }
#endif

    #region Fetch Methods

    /// <summary>
    /// Returns an NPC path by the name matchup in the array.
    /// </summary>
    /// <param name="name"></param>
    /// <returns></returns>
    public Behavior GetMovementPathByName(string name)
    {
        Behavior paths = new Behavior();

        foreach (var movementPath in movementPaths)
        {
            if (movementPath.pathName == name)
            {
                paths = movementPath;
                break;
            }
        }

        return paths;
    }

    /// <summary>
    /// Returns an NPC path by index in the array. 
    /// </summary>
    /// <param name="index"></param>
    /// <returns></returns>
    public Behavior GetMovementPathByIndex(int index)
    {
        Behavior paths = movementPaths[index];
        return paths;
    }

    /// <summary>
    /// Returns an NPC Controller by the name matchup in the array.
    /// </summary>
    /// <param name="name"></param>
    /// <returns></returns>
    public Controller GetNPCByName(string name)
    {
        Controller npc = null;

        foreach (var character in npcControllers)
        {
            if (character.NpcName == name)
            {
                npc = character;
                break;
            }
        }

        return npc;
    }

    /// <summary>
    /// Returns an NPC Controller by index in the array. 
    /// </summary>
    /// <param name="index"></param>
    /// <returns></returns>
    public Controller GetNPCByIndex(int index)
    {
        Controller npc = npcControllers[index];
        return npc;
    }


    #endregion
}