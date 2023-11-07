using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NPC
{
    /// <summary>
    /// Allows you to create default combined emote states for Emote Type enums.
    /// You can find examples of the human faces here -> https://www.notion.so/gravecat/Human-NPC-Emote-Reference-90615728e5fd47efb2799f7350725547 
    /// </summary>
    [Serializable]
    public struct CombinedEmote
    {
        public Animations.EmoteType emote;
        public int ears;
        public int eyebrows;
        public int eyes;
        public int mouth;
    }

    public class Animations : AnimationHandler
    {
        private Controller _controller;

        [Tooltip("Shows our current emote type.")]
        
        [SerializeField] private EmoteType emoteType;
        public enum EmoteType
        {
            HAPPY = 0,
            SAD = 1,
            ANGRY = 2,
            SURPRISED = 3,
            COUNT
        }

        [Tooltip("Checking this will stop disabling emotions on Idle. Good if you want to manually disable emotions on this NPC with yarn commands.")]
        [SerializeField]
        private bool manualDisableEmotions;

        [Tooltip("Check this if this is a primary character who will have unique facial animations set with number values.")]
        [SerializeField]
        private bool useCustomFacialEmotes;

        [Tooltip("Fill this in with the default emotes corresponding to our Emote Type enums.")]
        [SerializeField]
        private CombinedEmote[] combinedEmotes;

        //Emotion Layers
        private bool init;
        private int EarLayerNdx = -1;
        private int EyebrowLayerNdx = -1;
        private int EyeLayerNdx = -1;
        private int MouthLayerNdx = -1;
        //Emotion parameters
        private static readonly int EarEmoteParam = Animator.StringToHash("EmoteEars");
        private static readonly int EyebrowsEmoteParam = Animator.StringToHash("EmoteEyebrows");
        private static readonly int EyeEmoteParam = Animator.StringToHash("EmoteEyes");
        private static readonly int MouthEmoteParam = Animator.StringToHash("EmoteMouth");

        private const string talkState = "Talk";
        private const string emotionState = "Emote";

        private static readonly int IdleTypeParam = Animator.StringToHash("IdleType");
        private static readonly int MoveTypeParam = Animator.StringToHash("MoveType");
        private static readonly int EmotionParam = Animator.StringToHash("Emotion");

        #region Properties
        Controller Controller
        {
            get
            {
                if (_controller == null)
                {
                    _controller = GetComponentInParent<Controller>();
                }

                return _controller;
            }
        }
        public new Animator Animator => base.Animator;
        public bool ManualDisableEmotions => manualDisableEmotions;

        #endregion

        private void Start()
        {
            InitializeAnimParams();
        }

        /// <summary>
        /// Set by NPC Controller on Initialization.
        /// </summary>
        /// <param name="controller">Controller ref.</param>
        public void SetController(Controller controller)
        {
            _controller = controller;
            
            InitializeAnimParams();
        }

        void InitializeAnimParams()
        {
            if (!init)
            {
                // grab emotion animation layers
                EarLayerNdx = Animator.GetLayerIndex("Ears Layer");
                EyebrowLayerNdx = Animator.GetLayerIndex("Eyebrows Layer");
                EyeLayerNdx = Animator.GetLayerIndex("Eyes Layer");
                MouthLayerNdx = Animator.GetLayerIndex("Mouth Layer");
                init = true;
            }
        }

        public void SetIdleFloat(float value)
        {
            Animator.SetFloat(IdleTypeParam, value);
        }

        public void SetMoveFloat(float value)
        {
            Animator.SetFloat(MoveTypeParam, value);
        }

        public void SetEmotionFloat(float value)
        {
            Animator.SetFloat(EmotionParam, value);
        }

#if UNITY_EDITOR
        protected override void OnValidate()
        { 
            base.OnValidate();

            //Automatic check for setting up combined emotes on new characters. 
            if (useCustomFacialEmotes && (combinedEmotes == null || combinedEmotes.Length == 0))
            {
                //create array of correct emote type count
                combinedEmotes = new CombinedEmote[(int)EmoteType.COUNT];

                //set each element's emote to the corresponding emote type. 
                for(int i = 0 ; i < combinedEmotes.Length; i++)
                {
                    combinedEmotes[i].emote = (EmoteType)i;
                }
            }
        }
#endif

        #region Talking

        /// <summary>
        /// Enables talking when a dialogue begins, from the Speaking Character.
        /// </summary>
        public void SetTalking(bool state)
        {
            //IF true, check emotions. 
            if (state)
            {
                CheckEmotionType();

                //Stop wait for dialogue behavior. 
                Controller.Movement.DisableWaitForDialogue();
            }

            if (HasParameter(talkState))
            {
                Animator.SetBool(talkState, state);
            }
            else
            {
                Debug.LogWarning("Trying to set " + Controller.NpcName + " talking, but they do not have a Talk parameter in their animator!");
            }
        }

        #endregion

        #region Emotions

        /// <summary>
        /// Sets custom primary character emote based on composition of facial layers and their blendtree floats. 
        /// </summary>
        /// <param name="ears"> Intended anim for the ears.</param>
        /// <param name="eyebrows"> Intended anim for the eyebrows.</param>
        /// <param name="eyes"> Intended anim for the eyes.</param>
        /// <param name="mouth"> Intended anim for the mouth.</param>
        public void SetCustomEmote(int ears, int eyebrows, int eyes, int mouth)
        {
            if (useCustomFacialEmotes)
            {
                //ears
                Animator.SetLayerWeight(EarLayerNdx, Mathf.Clamp(ears, 0f, 1f));
                Animator.SetFloat(EarEmoteParam, ears);
                //eyebrows
                Animator.SetLayerWeight(EyebrowLayerNdx, Mathf.Clamp(eyebrows, 0f, 1f));
                Animator.SetFloat(EyebrowsEmoteParam, eyebrows);
                //eyes
                Animator.SetLayerWeight(EyeLayerNdx, Mathf.Clamp(eyes, 0f, 1f));
                Animator.SetFloat(EyeEmoteParam, eyes);
                //mouth
                Animator.SetLayerWeight(MouthLayerNdx, Mathf.Clamp(mouth, 0f, 1f));
                Animator.SetFloat(MouthEmoteParam, mouth);

                //ensure emote state true
                Animator.SetBool(emotionState, true);
            }
            else
            {
                Debug.LogError("You tried to set a custom emote on an NPC that does not have them!");
            }
        }

        /// <summary>
        /// Sets emote float and enables emotion. Used by default for secondary characters. 
        /// </summary>
        /// <param name="emote">The desired standard Emote type.</param>
        public void SetEmote(EmoteType emote)
        {
            emoteType = emote;
            if (HasParameter(emotionState))
            {
                Animator.SetBool(emotionState, true);
                CheckEmotionType();
            }
            else
            {
                Debug.LogWarning("Trying to set " + Controller.NpcName + " emotions, but they do not have an Emotion parameter in their animator!");
            }
        }

        /// <summary>
        /// Sets animator emote float as well as primary character combined emote according to current Emote type. 
        /// </summary>
        void CheckEmotionType()
        {
            //need to set correct combined emote
            if (useCustomFacialEmotes)
            {
                //loop thru combined emotes we have set. 
                foreach (var emotion in combinedEmotes)
                {
                    //is it a match?
                    if (emotion.emote == emoteType)
                    {
                        SetCustomEmote(emotion.ears, emotion.eyebrows, emotion.eyes, emotion.mouth);
                        break;
                    }
                }
            }
            //Standard emotion layer
            else
            {
                //add emote type + 1 because john set up anim values at base 1 for Happy. 
                SetEmotionFloat((float)emoteType + 1f);
            }
        }

        /// <summary>
        /// Disables emotions. 
        /// </summary>
        public void DisableEmotions()
        {
            //Check for disabling primary character layers
            if (useCustomFacialEmotes)
            {
                Animator.SetLayerWeight(EarLayerNdx, 0f);
                Animator.SetLayerWeight(EyebrowLayerNdx, 0f);
                Animator.SetLayerWeight(EyeLayerNdx, 0f);
                Animator.SetLayerWeight(MouthLayerNdx, 0f);
            }
            //Standard emotion layer
            else if (HasParameter(emotionState))
            {
                Animator.SetBool(emotionState, false);
            }
        }

        #endregion
    }
}