using UnityEngine;
using System.Collections;
using System.Linq;

namespace TreeManager
{
    public class PlayerMaterialChanger : MonoBehaviour
    {
        [SerializeField]
        Camera camera;

        TreeMaterialChangeManager tree;

        void Update()
        {
            RaycastHit hit;
            RaycastHit[] hits = Physics.RaycastAll(camera.ScreenPointToRay(new Vector3(Screen.width / 2, Screen.height / 2)), 20).OrderBy(x => x.distance).ToArray();
            IHittable hittable;
            TreeMaterialChangeManager tempMaterialChangeObject;

            if (hits.Length > 0)
            {
                for (int i = 0; i < hits.Length; i++)
                {
                    hit = hits[i];
                    tempMaterialChangeObject = hit.transform.GetComponentInParent<TreeMaterialChangeManager>();

                    if (tree != null && !tree.Equals(tempMaterialChangeObject))
                    {
                        tree.ChangeMaterial(false);
                        tree = null;
                        return;
                    }


                    hittable = hit.transform.GetComponent<IHittable>();

                    if (hittable != null)
                    {
                        hittable.ConvertTree();
                    }



                    tree = tempMaterialChangeObject;

                    if (tree != null)
                    {
                        tree.ChangeMaterial(true);
                    }
                    else
                    {
                        continue;
                    }

                    return;
                }
            }
            else
            {
                if (tree != null)
                {
                    tree.ChangeMaterial(false);
                    tree = null;
                }
            }
        }
    }
}