using UnityEngine;
using System.Collections;

#if PhotonExtension
namespace TreeManager
{
    public class DemoPhotonController : MonoBehaviour
    {
        PhotonView pView;

        [SerializeField]
        MonoBehaviour[] disableOnStart;

        void Awake()
        {
            pView = GetComponent<PhotonView>();

            if (!pView.isMine)
            {
                GetComponent<CharacterController>().enabled = false;

                foreach (MonoBehaviour component in disableOnStart)
                {
                    component.enabled = false;
                }

                transform.GetChild(0).gameObject.SetActive(false);
            }
        }
    }

}

#endif
