using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using System.Linq;

#if UNITY_EDITOR
[CustomEditor(typeof(OffsetAnimator))]
public class OffsetAnimatorEditor : UnityEditor.Editor
{
    public override void OnInspectorGUI()
    {
        //Get offset anim script
        OffsetAnimator offset = (OffsetAnimator)target;

        //button for getting offset anims
        if (GUILayout.Button("Get All Animator Children"))
        {
            offset.GetAllAnimatorChildren();
        }
        
        base.OnInspectorGUI();
    }
}
#endif