using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;
using UnityStandardAssets.Characters.FirstPerson;

namespace NPC
{
    public class Movement : MonoBehaviour
    {
        //controller pieces 
        Controller controller;
        NPCMovementManager movementManager;

        private bool init;
        [Header("AI Movement Settings")]
        //chosen in editor 
        [Tooltip("Chosen by the Movement Path assigned to the NPC")]
        public NPCMovementTypes npcType;
        public enum NPCMovementTypes
        {
            WAYPOINT, RANDOM, IDLE, PATHFINDER, FINDPLAYER, FOLLOWPLAYER, FOLLOWER, GOTOTransform,
        }

        [Tooltip("Various Animation Types!")]
        public IdleType idleType;
        public enum IdleType
        {
            STANDING = 0,
            SITTING = 1,
            COUNT
        }

        public MoveType moveType;
        public enum MoveType
        {
            INVALID = -1,
            WALK = 0,
            RUN = 1,
            COUNT
        }

        private static int s_FacingLeftAnimatorParam = Animator.StringToHash("Facing Left");

        [Tooltip("The behavior which will be assigned to this NPC on start.")]
        public MovementPath startBehavior;
        [Tooltip("The current behavior the NPC is using.")]
        public Behavior currentBehavior;
        [Tooltip("Go to Transform behavior type.")]
        public Behavior goToTransform;
        public bool AIenabled = true;

        Vector3 origPosition;
        public Vector3 targetPosition;
        float distFromPlayer;

        [HideInInspector]
        public NavMeshAgent myNavMesh;
        [HideInInspector]
        public bool resetsMovement;
        [HideInInspector]
        public MovementPath newMovement;

        //state timers 
        [Tooltip("Current time of a state")]
        public float stateTimer, actionTimer;
        [Tooltip("Amount of time a state will take")]
        public float idleTime, actionTime;

        [Header("Look At Settings")]
        public Transform lookAtTransform;
        public float lookSmooth = 5f;

        [Header("Monologue Wait")]
        public bool waitForDialogue;
        public float dialogueWaitTimer = 0f, dialogueWaitTime = 30f;

        [Header("Wanderer Settings")]
        public Transform[] waypoints;
        public int waypointCounter = 0;

        [Header("Pathfinder Settings")]
        public bool checkAgainstPlayer;

        [Header("Random Settings")]
        public float movementRadius;

        [Header("Follower Logic")]
        public Transform followObject;
        public bool holdingPlayer;

        [Header("Move Direction")]
        [Tooltip("Is the character flipped (facing left) on start?")]
        public bool flipOnStart;

        [Header("Move Speed")]
        [SerializeField]
        private bool useMoveTypeSpeeds = false;
        [SerializeField]
        private float[] moveTypeSpeeds = new float[(int)MoveType.COUNT]
        {
            3f,
            3f
        };

        private float distanceFromPlayer;

        //used to check position
        private Vector3 lastPosition;

        //for save purposes.
        private Transform lastTransform;
        //accessor
        public Transform LastTransform
        {
            get
            {
                return lastTransform;
            }
            set
            {
                lastTransform = value;
            }
        }

        public float[] MoveSpeeds => useMoveTypeSpeeds ? moveTypeSpeeds : null;

        void Awake()
        {
            Init();
        }

        void Init()
        {
            if (init)
            {
                return;
            }

            controller = GetComponent<Controller>();
            myNavMesh = GetComponent<NavMeshAgent>();
            movementManager = FindObjectOfType<NPCMovementManager>();

            init = true;
        }

        void Start()
        {
            origPosition = transform.position;
            lastPosition = origPosition;

            //only use start behavior if there is one
            if (startBehavior)
            {
                ResetMovement(startBehavior);
            }

            //only call set idle if the controller does NOT initialize after awake.
            //True for twigs, false for NPCs
            if (!controller.initializeAfterAwake)
            {
                //this is for NPCs
                SetIdle();
            }
        }

        void Update()
        {
            if (AIenabled)
            {
                //idle state
                Idle();
                //moving state
                Moving();
                //finding player
                FindPlayer();
                //following player
                FollowPlayer();
                //Follower behavior
                FollowObject();
            }
        }

        #region Idle State Methods

        //NPC idle state 
        void Idle()
        {
            if (controller.npcState == Controller.NPCStates.IDLE)
            {
                stateTimer -= Time.deltaTime;

                LockControllerRotationToZero();

                //NPC will perform its action 
                //ActionCountdown();

                //if we are not IDLE npc, idle state has a countdown until movement 
                if (npcType == NPCMovementTypes.IDLE || npcType == NPCMovementTypes.GOTOTransform)
                {
                    //play a sound
                    if (stateTimer < 0)
                    {
                        //idle action?

                        stateTimer = idleTime;
                    }
                }
                //Set destination based on npc type 
                else if (npcType == NPCMovementTypes.RANDOM)
                {
                    if (stateTimer < 0)
                    {
                        //Debug.Log("calling radials");
                        SetRandomDestination();
                    }

                }
                //looping waypoints npc 
                else if (npcType == NPCMovementTypes.WAYPOINT)
                {
                    //wait for monologue 
                    if (!waitForDialogue)
                    {
                        if (stateTimer < 0)
                        {
                            //Debug.Log("calling waypoints");
                            SetWaypoint(true);
                        }
                    }
                    //waiting to give monologue -- look at player 
                    else
                    {
                        WaitToGiveDialogue();
                    }
                }
                //waits until player is near then walks to next point 
                else if (npcType == NPCMovementTypes.PATHFINDER)
                {
                    //goes to next point if timer reaches 0 or player is near 
                    //Only does this if there are currenltly points in my list 
                    if (!waitForDialogue)
                    {
                        //make sure there is more waypoints!
                        if (waypointCounter < waypoints.Length - 1)
                        {
                            float playerDist = Mathf.Infinity;
                            float myDist = 0;

                            //only if check against player is set do we change the above dists
                            if (checkAgainstPlayer)
                            {
                                //must be before final waypoint 
                                if (waypointCounter + 1 < waypoints.Length - 1 && waypoints.Length > 1)
                                {
                                    //player dist from next waypoint
                                    playerDist = Vector3.Distance(AnimalMgr.Instance.PlayerController.transform.position, waypoints[waypointCounter + 1].position);

                                    //my dist from next waypoint
                                    myDist = Vector3.Distance(transform.position, waypoints[waypointCounter + 1].position);
                                }

                                //if my stateTimer ended, or player is closer to my next dest
                                if ( stateTimer < 0 || playerDist < myDist)
                                {
                                    SetWaypoint(false);
                                }
                            }
                            //don't worry about player, just idle for idle time.
                            else
                            {
                                //if idle time is up, move to next waypoint.
                                if (stateTimer < 0)
                                {
                                    SetWaypoint(false);
                                }
                            }
                        }
                    }
                    //waiting to give monologue -- look at player 
                    else
                    {
                        WaitToGiveDialogue();
                    }
                }
            }
        }

        //stops movement
        public virtual void SetIdle()
        {
            if (myNavMesh && myNavMesh.isOnNavMesh)
                myNavMesh.isStopped = true;
            stateTimer = idleTime;
            controller.Animation.SetTalking(false);
            //disable emotions if it is not set to manual. 
            if (!controller.Animation.ManualDisableEmotions)
            {
                controller.Animation.DisableEmotions();
            }
            CheckIdleType();
            controller.Animation.SetAnimatorByParameter("idle");
            controller.npcState = Controller.NPCStates.IDLE;
        }

        /// <summary>
        /// Switch idle type in animator!
        /// </summary>
        void CheckIdleType()
        {
            if (controller.Animation.HasParameter("IdleType"))
            {
                controller.Animation.SetIdleFloat((float)idleType);
            }
        }

        /// <summary>
        /// Allows you to set wait for dialogue with a specified wait time. 
        /// </summary>
        /// <param name="wait"></param>
        public void SetWaitForDialogue(float wait)
        {
            dialogueWaitTime = wait;
            waitForDialogue = true;
        }

        //TODO GC-2688 check why Hunter is still moving during Dialogues.
        //Just want to make sure we are able to set this easily. 
        //called from within Idle state only 
        void WaitToGiveDialogue()
        {
            LockControllerRotationToZero();

            //dont want this to count until start view is inactive 
            dialogueWaitTimer += Time.deltaTime;

            //stop waiting for monologue IF not in monologue 
            if (dialogueWaitTimer > dialogueWaitTime)
            {
                DisableWaitForDialogue();
            }
        }

        /// <summary>
        /// Disables wait for dialogue. 
        /// </summary>
        public void DisableWaitForDialogue()
        {
            waitForDialogue = false;
            dialogueWaitTimer = 0;
        }

        //can be called during IDLE state 
        void ActionCountdown()
        {
            actionTimer -= Time.deltaTime;

            //play a sound (cough)
            if (actionTimer < 0 )
            {
                //todo figure out what the action is. 
                // if (npcSounds.myAudioSource.isPlaying == false)
                // {
                //     //npcAnimations.Animator.SetTrigger("action1");
                //
                //     actionTimer = actionTime;
                // }
            }
        }


        #endregion

        #region State Management

        /// <summary>
        /// Resets the AI's movement type / path behavior
        /// </summary>
        /// <param name="newMove"></param>
        public void ResetMovement(MovementPath newMove)
        {
            //get the correct movement path data
            Behavior behavior = movementManager.movementPaths[newMove.pathIndex];

            ResetMovement(behavior);
        }

        /// <summary>
        /// Resets the AI's movement type / path behavior
        /// </summary>
        /// <param name="path"></param>
        public void ResetMovement(Behavior path, MoveType overrideMoveType = MoveType.INVALID)
        {
            npcType = path.movementType;

            idleType = path.idleType;

            moveType = overrideMoveType == MoveType.INVALID ? path.moveType : overrideMoveType;

            SetMoveType(moveType);

            followObject = path.followObject;

            //random npc move type 
            if (npcType == NPCMovementTypes.RANDOM)
            {
                movementRadius = path.moveRadius;
            }
            //IDlE -- set new idle type?
            else if (npcType == NPCMovementTypes.IDLE)
            {
                SetIdle();
            }
            //pathfinder or waypoint looper 
            else if (npcType == NPCMovementTypes.PATHFINDER || npcType == NPCMovementTypes.WAYPOINT)
            {
                waypoints = path.movementPoints;
                waypointCounter = 0;

                waitForDialogue = false;
                checkAgainstPlayer = path.checksAgainstPlayer;
            }

            //set current
            currentBehavior = path;

            resetsMovement = false;
        }

        //resets state timer to float time + random range 
        void ResetStateTimer(float time)
        {
            stateTimer = time + Random.Range(-1f, 1f);
        }

        #endregion

        #region Find & Carry Player Logic

        void GetDistFromPlayer()
        {
            distFromPlayer = Vector3.Distance(transform.position,AnimalMgr.Instance.PlayerController.transform.position);
        }
        
        //have this NPC run to wherever the player is and pick them up. 
        void FindPlayer()
        {
            if (npcType == NPCMovementTypes.FINDPLAYER)
            {
                //are we close to player?
                GetDistFromPlayer();
                if (distFromPlayer < myNavMesh.stoppingDistance + 3f)
                {
                    PickUpPlayer();
                }
                //keep loooking
                else
                {
                    NavigateToPoint(AnimalMgr.Instance.PlayerController.transform.position, false);
                }
            }
        }

        /// <summary>
        /// Could write a function to pick up the player :)
        /// </summary>
        void PickUpPlayer()
        {
            //
        }

        /// <summary>
        /// Drops player and lets them move
        /// </summary>
        public void DropPlayer()
        {

        }
        #endregion

        #region Look At Logic
        //sets the npc look at  
        public void SetLook(Transform point)
        {
            lookAtTransform = point;
        }

        //set npc look at using move manager array 
        public void SetLookAt(int pointInManager)
        {
            Transform point = movementManager.lookAtObjects[pointInManager];

            lookAtTransform = point;
        }

        //looks at object
        //TODO this will need revisions for 2d logic. 
        //TODO will basically need to do a differential from point of interest and current pos.
        //TODO this will tell us what dir the npc needs to look in (using unit circle, can set correct anim). 
        void LockControllerRotationToZero()
        {
            //zero the NPC controller rotation.
            transform.rotation = Quaternion.Euler(Vector3.zero);
        }
        #endregion

        #region Movement Methods
        //MOVING state
        void Moving()
        {
            //state check
            if (controller.npcState == Controller.NPCStates.MOVING)
            {
                //looks at targetPos when not waving 
                LockControllerRotationToZero();

                //check holding
                if (holdingPlayer)
                {

                }
                GetDistFromPlayer();
                if (distFromPlayer < myNavMesh.stoppingDistance )
                {
                    //can be called by triggers or smth
                    if (resetsMovement)
                    {
                        ResetMovement(newMovement);
                    }

                    SetIdle();
                }
            }
        }

        /// <summary>
        /// changes the NPC's run type 
        /// </summary>
        /// <param name="move></param>
        public void SetMoveType(MoveType move)
        {
            moveType = move;

            //set anim parameter
            if (controller.Animation.HasParameter("MoveType"))
            {
                controller.Animation.SetMoveFloat((float)moveType);
            }

            //set our speed according to our move type if we're configured for that
            if (useMoveTypeSpeeds)
            {
                myNavMesh.speed = moveTypeSpeeds[(int)moveType];
            }
        }

        /// <summary>
        /// Follows the follow object set by a Follower behavior. 
        /// </summary>
        void FollowObject()
        {
            if (npcType == NPCMovementTypes.FOLLOWER)
            {
                //null check
                if (followObject != null)
                {
                    //are we not yet at the follow obj and still not moving?
                    if (Vector3.Distance(transform.position, followObject.position) > myNavMesh.stoppingDistance + 1f
                        && controller.npcState != Controller.NPCStates.MOVING)
                    {
                        NavigateToPoint(followObject.position, false);
                    }
                }
            }
        }

        /// <summary>
        /// Follows the player set by a Follower behavior. 
        /// </summary>
        void FollowPlayer()
        {
            if (npcType == NPCMovementTypes.FOLLOWPLAYER)
            {
                GetDistFromPlayer();
                //are we not yet at the player and still not moving?
                if (distFromPlayer > myNavMesh.stoppingDistance + 1f
                    && controller.npcState != Controller.NPCStates.MOVING)
                {
                    NavigateToPoint( AnimalMgr.Instance.PlayerController.transform.position, false);
                }
            }
        }

        //this function sets a random point as the nav mesh destination
        //checks if the NPC can walk there before setting it
        //sets animator correctly
        public virtual void SetWaypoint(bool looping)
        {
            //when it reaches final point in list, it will reset counter to 0
            if (looping)
            {
                //increment waypoint counter
                if (waypointCounter < waypoints.Length - 1)
                {
                    waypointCounter++;
                }
                else
                {
                    waypointCounter = 0;
                }
            }
            //just goes until last point then stops
            else
            {
                //increment waypoint counter
                if (waypointCounter < waypoints.Length - 1)
                {
                    waypointCounter++;
                }
            }

            //set point to cast from 
            if (waypoints[waypointCounter] != null)
            {
                Vector3 castPoint = waypoints[waypointCounter].position;
                NavigateToPoint(castPoint, false);

                //try getting Transform from the waypoint. 
                Transform Transform = waypoints[waypointCounter].GetComponent<Transform>();
                if (Transform)
                {
                    lastTransform = Transform;
                }
            }
            else
            {
                Debug.LogWarningFormat("There is no waypoint at waypointCounter {0}. Unable to navigate to waypoint.", waypointCounter);
            }
        }

        //this function sets a random point as the nav mesh destination
        //checks if the NPC can walk there before setting it
        //sets animator correctly
        public virtual void SetRandomDestination()
        {
            Vector2 xz = Random.insideUnitCircle * movementRadius;

            Vector3 castPoint = new Vector3(xz.x + origPosition.x, transform.position.y + 10, xz.y + origPosition.z);

            NavigateToPoint(castPoint, false);
        }

        //base function for actually navigating to a point 
        public virtual void NavigateToPoint(Vector3 castPoint, bool hasMono)
        {
            targetPosition = Tools.General.GetGroundedPoint(castPoint);

            myNavMesh.SetDestination(targetPosition);

            myNavMesh.isStopped = false;

            //set moving 
            controller.npcState = Controller.NPCStates.MOVING;
            controller.Animation.SetAnimatorByParameter("moving");

            //character will wait when it arrives at point 
            if (hasMono)
            {
                waitForDialogue = true;
            }
        }

        /// <summary>
        /// Navigates to point of the Transform. 
        /// </summary>
        /// <param name="locator"></param>
        public virtual void GoToTransform(Transform locator, MoveType overrideMoveType = MoveType.INVALID)
        {
            if (locator != null)
            {
                ResetMovement(goToTransform, overrideMoveType);

                NavigateToPoint(locator.transform.position, false);

                lastTransform = locator;
            }
            else
            {
                Debug.LogError("Attempted to move to a Transform, but Transform was null");
            }
        }

        //[Button]
        public void SnapNPCToGround()
        {
            targetPosition = Tools.General.GetGroundedPoint(transform.position);
            transform.position = targetPosition;
        }

        /// <summary>
        /// Adds random amount to speed between provided min max. 
        /// </summary>
        /// <param name="minMax"></param>
        public void RandomizeMoveSpeed(Vector2 minMax)
        {
            if (myNavMesh)
            {
                myNavMesh.speed += Random.Range(minMax.x, minMax.y);
            }
        }

        /// <summary>
        /// Teleports this NPC to a location. 
        /// </summary>
        /// <param name="location"></param>
        public void TeleportNPC(Transform location)
        {
            //should only TP if game obj is active, otherwise TP coroutine throws error. 
            if (gameObject.activeSelf)
            {
                var teleportPos = Tools.General.GetGroundedPoint(location.position);

                StartCoroutine(TeleportCoroutine(teleportPos));

                //try getting Transform from the teleport location. 
                Transform locator = location.GetComponent<Transform>();
                if (locator)
                {
                    lastTransform = locator;
                }
            }
        }

        /// <summary>
        /// Teleports the npc. 
        /// </summary>
        /// <param name="teleportPos"></param>
        /// <returns></returns>
        IEnumerator TeleportCoroutine(Vector3 teleportPos)
        {
            myNavMesh.enabled = false;

            yield return null;

            transform.position = teleportPos;

            yield return null;

            myNavMesh.enabled = true;

            SetIdle();
        }

        #endregion
    }
}