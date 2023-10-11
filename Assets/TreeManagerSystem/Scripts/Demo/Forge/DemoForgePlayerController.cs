#if ForgeExtension

namespace TreeManager
{

    using UnityEngine;
    using System.Collections;
    using BeardedManStudios.Network;


    public class DemoForgePlayerController : NetworkedMonoBehavior
    {
        public MonoBehaviour[] components = new MonoBehaviour[0];
        public Transform CameraObject;

        protected override void NetworkStart()
        {
            base.NetworkStart();

            if(!IsOwner)
            {
                CameraObject.gameObject.SetActive(false);

                MonoBehaviour component;

                for (int i = 0; i < components.Length; i++)
                {
                    component = components[i];

                    component.enabled = false;
                }
            }
        }

    }

}

#endif