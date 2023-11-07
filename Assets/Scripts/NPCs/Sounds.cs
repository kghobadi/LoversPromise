using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace NPC
{
    /// <summary>
    /// Sound component for NPCs. Currently just set up for talking sounds. Works with FMOD. 
    /// </summary>
    public class Sounds : AudioHandler
    {
        FaceAnimation _faceAnim;
        SpriteRenderer face;

        [Header("Face Animations")]
        public bool animateFaceToSound;

        private void Start()
        {
            //get face anim
            _faceAnim = GetComponent<FaceAnimation>();
            if (_faceAnim == null)
            {
                _faceAnim = GetComponentInChildren<FaceAnimation>();
            }

            //get face sprite renderer 
            if (face == null && _faceAnim)
            {
                face = _faceAnim.GetComponent<SpriteRenderer>();
            }
        }

        public void SetFaceAnim(FaceAnimation faceAnim)
        {
            _faceAnim = faceAnim;
            face = _faceAnim.GetComponent<SpriteRenderer>();
        }

        private void Update()
        {
            if (animateFaceToSound)
            {
                AnimateFaceToSound();
            }
        }

        /// <summary>
        /// Plays face animations while the sound is emitting (i.e., character is talking).
        /// </summary>
        void AnimateFaceToSound()
        {
            if (myAudioSource.isPlaying)
            {
                if (_faceAnim)
                    _faceAnim.SetAnimatorByParameter("talking");
            }
            else
            {
                if (_faceAnim)
                    _faceAnim.SetAnimatorByParameter("idle");
            }
        }

    }
}