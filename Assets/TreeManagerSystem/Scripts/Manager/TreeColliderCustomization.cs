using UnityEngine;
using System.Collections;
using System.Collections.Generic;

#if UNITY_EDITOR
using UnityEditor;
#endif

namespace TreeManager
{
    public class TreeColliderCustomization : MonoBehaviour
    {
        public TreesManager treeScript;
        public TreesManagerTreePrototypeData data;
        public TerrainTreeColliderType colliderType;
        public Transform viewedResourceInstance;

        public Vector3 lastSceneCameraPivot = Vector3.zero;

        CapsuleCollider cc;
        BoxCollider bc;

        public void Init()
        {
            if (colliderType == TerrainTreeColliderType.Capsule)
                cc = GetComponent<CapsuleCollider>();
            else
                bc = GetComponent<BoxCollider>();
        }

        void Awake()
        {
            Dispose();
        }

        public void UpdateData()
        {
            if (colliderType == TerrainTreeColliderType.Capsule)
            {
                data.colliderHeight = cc.height;
                data.colliderRadius = cc.radius;
                data.colliderCenter = cc.center;
            }
            else
            {
                data.colliderSize = bc.size;
                data.colliderCenter = bc.center;
            }

         #if UNITY_EDITOR

            if (SceneView.lastActiveSceneView != null)
                SceneView.lastActiveSceneView.pivot = lastSceneCameraPivot;

         #endif

        }

        public void Dispose()
        {
            if (viewedResourceInstance != null)
                DestroyImmediate(viewedResourceInstance.gameObject);

            if (bc != null)
                DestroyImmediate(bc);
            else if (cc != null)
                DestroyImmediate(cc);


            DestroyImmediate(gameObject);
        }
    }
}
