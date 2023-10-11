using UnityEngine;
using System.Collections;

namespace TreeManager
{
    public class AOITreeDetection : MonoBehaviour, IHittable
    {
        public void ApplyDamage()
        {
            TreesManager.instance.ApplyDamage(this.transform.position, 10);
        }

        public void ApplyDamage(byte damage)
        {
            TreesManager.instance.ApplyDamage(this.transform.position, damage);
        }

        public void Die(bool force)
        {
        }

        public ResourceObject ConvertTree()
        {
            return TreesManager.instance.ConvertTree(transform.position);
        }
    }
}