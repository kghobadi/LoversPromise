using UnityEngine;
using UnityEditor;
using System.Collections;

namespace TreeManager
{
    [CustomEditor(typeof(TreeColliderCustomization))]
    public class TreeColliderCustomizationEditor : Editor
    {
        TreeColliderCustomization script;
        BoxCollider bc;
        CapsuleCollider cc;

        GUIStyle boxStyle;

        public override void OnInspectorGUI()
        {
            if(script == null)
            {
                script = (TreeColliderCustomization)target;
                OnInspectorGUI();
                return;
            }

            if (boxStyle == null)
            {
                boxStyle = new GUIStyle(GUI.skin.box);
                boxStyle.alignment = TextAnchor.UpperLeft;
                boxStyle.fontStyle = FontStyle.Bold;
                boxStyle.normal.textColor = Color.white;
            }

            if((bc == null && script.colliderType == TerrainTreeColliderType.Box) || (cc == null && script.colliderType == TerrainTreeColliderType.Capsule))
            {
                if(script.colliderType == TerrainTreeColliderType.Box) bc = script.GetComponent<BoxCollider>();
                else cc = script.GetComponent<CapsuleCollider>();

                OnInspectorGUI();
                return;
            }

            EditorGUILayout.BeginVertical(boxStyle);

            if(script.colliderType == TerrainTreeColliderType.Box) // Paint box collider editor UI
            {
                bc.center = EditorGUILayout.Vector3Field("Box Center :", bc.center);
                bc.size = EditorGUILayout.Vector3Field("Box Size :", bc.size);
            }
            else
            {
                cc.center = EditorGUILayout.Vector3Field("CapsuleCollider Center :", cc.center);
                cc.height = EditorGUILayout.FloatField("CapsuleCollider Height :", cc.height);
                cc.radius = EditorGUILayout.FloatField("CapsuleCollider Radius :", cc.radius);
            }
             
            EditorGUILayout.EndVertical();

            if(GUILayout.Button("Save Collider Data"))
            {
                if(TreesManager.instance != null)
                    Selection.activeObject = TreesManager.instance.gameObject;

                script.UpdateData();
                return;
            }
        }
    }
}
