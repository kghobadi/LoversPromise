using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NPC
{
    public class Controller : MonoBehaviour
    {
        //npc state manager
        public NPCStates npcState;

        public enum NPCStates
        {
            IDLE, MOVING, TALKING, WAVING, ACTING, TRADING
        }

        public LayerMask npcLayer;

        [Tooltip("Only check true for the player NPC controller.")]
        public bool initializeAfterAwake;

        //TODO use [GETCOMPONENT] methods to clear this up
        private Animations npcAnimations;
        private Movement npcMovement;
        private AnimalSounds npcSounds;
        private Interactable interactable;
        #region Properties

        public string NpcName => gameObject.name;
        public Animations Animation => npcAnimations;
        public Movement Movement => npcMovement;
        public AnimalSounds Sounds => npcSounds;
        public Interactable Interactable => interactable;


        #endregion

        private void Awake()
        {
            if (!initializeAfterAwake)
            {
                Initialize();
            }
        }

        public void Initialize(bool tiltRig = true)
        {
            //npc component refs 
            npcMovement = GetComponent<Movement>();
            npcSounds = GetComponent<AnimalSounds>();
            npcAnimations = GetComponent<Animations>();
            if (npcAnimations == null)
            {
                npcAnimations = GetComponentInChildren<Animations>(true);
                if (npcAnimations)
                {
                    npcAnimations.SetController(this);
                }
            }

            //get interactable
            interactable = GetComponent<Interactable>();
            if (interactable == null)
            {
                interactable = GetComponentInChildren<Interactable>(true);
            }
        }

        //All Command Implementations below. 
        #region Behavior/Positioning
        public void SetNpcBehavior(Behavior path, int moveType = -1)
        {
            Movement.ResetMovement(path);
        }

        public void GoToLocator(Transform locator, int moveType = -1)
        {
            Movement.GoToTransform(locator);
        }

        public void TeleportToLocator(Transform locator)
        {
            Movement.TeleportNPC(locator.transform);
        }

        #endregion

        #region Emotions

        public void SetEmotion(string emotion)
        {
            switch (emotion)
            {
                case "HAPPY":
                    Animation.SetEmote(Animations.EmoteType.HAPPY);
                    break;
                case "ANGRY":
                    Animation.SetEmote(Animations.EmoteType.ANGRY);
                    break;
                case "SURPRISED":
                    Animation.SetEmote(Animations.EmoteType.SURPRISED);
                    break;
                case "SAD":
                    Animation.SetEmote(Animations.EmoteType.SAD);
                    break;
            }
        }

        public void SetCustomEmote(int ears, int eyebrows, int eyes, int mouth)
        {
            Animation.SetCustomEmote(ears, eyebrows, eyes, mouth);
        }

        public void SetHappy()
        {
            Animation.SetEmote(Animations.EmoteType.HAPPY);
        }

        public void SetAngry()
        {
            Animation.SetEmote(Animations.EmoteType.ANGRY);
        }

        public void SetSurprised()
        {
            Animation.SetEmote(Animations.EmoteType.SURPRISED);
        }

        public void SetSad()
        {
            Animation.SetEmote(Animations.EmoteType.SAD);
        }

        public void DisableEmotion()
        {
            Animation.DisableEmotions();
        }

        #endregion

        #region Animator

        public void SetAnimTrigger(string trigger)
        {
            Animation.Animator.SetTrigger(trigger);
        }

        public void SetAnimBool(string boolName, bool value)
        {
            Animation.Animator.SetBool(boolName, value);
        }

        public void SetAnimFloat(string floatName, float value)
        {
            Animation.Animator.SetFloat(floatName, value);
        }

        #endregion
    }
}