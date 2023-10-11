using UnityEngine;
using TreeManager;

public interface IHittable
{
    void ApplyDamage();
    void ApplyDamage(byte damage);

    void Die(bool force);

    ResourceObject ConvertTree();
}
