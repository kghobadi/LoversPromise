using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace TreeManager
{
    public class TreeMaterialChangeManager : MonoBehaviour
    {
        public MaterialData materialData;
        Material[] originalMaterials;
        TreeScript treeScript;

        public void Awake()
        {
            treeScript = GetComponent<TreeScript>();

            if(materialData.mesh != null && materialData.material != null)
                originalMaterials = materialData.mesh.materials;
        }

        public void ChangeMaterial(bool value)
        {
            if (materialData.mesh == null || materialData.material == null) return;

            if (value)
            {
                Material[] tempMaterials = materialData.mesh.materials;

                for (int b = 0; b < materialData.mesh.materials.Length; b++)
                {
                    tempMaterials[b] = materialData.material;

                }

                materialData.mesh.materials = tempMaterials;
            }

            else
            {
                materialData.mesh.materials = originalMaterials;
            }

        }

    }

    [System.Serializable]
    public class MaterialData
    {
        public MeshRenderer mesh;
        public Material material;

        public MaterialData()
        {

        }

        public MaterialData(MeshRenderer _mesh, Material _material)
        {
            this.mesh = _mesh;
            this.material = _material;
        }

    }

}