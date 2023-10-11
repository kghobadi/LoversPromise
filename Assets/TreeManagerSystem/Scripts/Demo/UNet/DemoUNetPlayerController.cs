#if UNetExtension

namespace TreeManager
{
    using UnityEngine;
    using System.Collections;
    using UnityEngine.Networking;

    public class DemoUNetPlayerController : NetworkBehaviour
    {
        [SerializeField] MonoBehaviour[] components;
        [SerializeField] Transform CameraTransform;


        void Start()
        {
            if (this.enabled)
            {
                if (isLocalPlayer)
                {
                    transform.position = new Vector3(262.5917f, 61.15f, 1377.509f);
                }
                else
                {
                    foreach (var component in components)
                    {
                        component.enabled = false;
                    }

                    CameraTransform.gameObject.SetActive(false);
                }
            }
        }
        
    }
}

#endif