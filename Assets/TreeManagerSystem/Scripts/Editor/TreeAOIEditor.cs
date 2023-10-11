using UnityEngine;
using System.Collections;
using UnityEditor;
using TreeManager;

[CustomEditor(typeof(TreeAOI))]
public class TreeAOIEditor : Editor 
{
    private TreeAOI script;

    public override void OnInspectorGUI()
    {
        script = (TreeAOI)target;

        script.aoiType = (AOIType)EditorGUILayout.EnumPopup("AOI Type :", script.aoiType);

        GUILayout.Space(12);

        if (script.aoiType == AOIType.Capsule)
        {
            script.CollidersAmount = EditorGUILayout.IntField("AOI Colliders Amount : ", script.CollidersAmount);
        }
        script.sortingRange = EditorGUILayout.IntField("AOI Max Finding Range : ", script.sortingRange);
        script.updatingAOIFrequency = EditorGUILayout.FloatField("AOI Updating Frequency : ", script.updatingAOIFrequency);

        if (GUI.changed)
            EditorUtility.SetDirty(target);

    }
}




