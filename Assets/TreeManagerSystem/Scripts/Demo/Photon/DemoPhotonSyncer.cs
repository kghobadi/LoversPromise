#if PhotonExtension

using UnityEngine;
using System.Collections;
using Photon;

namespace TreeManager
{

    public class DemoPhotonSyncer : Photon.MonoBehaviour
    {
        #region Variables
        PhotonView pView;

        [SerializeField] bool lerpByDistance;

        Vector3 networkedLocation;
        Quaternion networkedRotation;
        #endregion

        void Awake()
        {
            pView = GetComponent<PhotonView>();
        }

        public void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info)
        {
            if (stream.isReading)
            {
                if (!pView.isMine)
                {
                    this.networkedLocation = (Vector3)stream.ReceiveNext();
                    this.networkedRotation = (Quaternion)stream.ReceiveNext();
                }
            }
            else
            {
                if (pView.isMine)
                {
                    stream.SendNext(transform.position);
                    stream.SendNext(transform.rotation);
                }
            }
        }

        void Update()
        {
            if(!pView.isMine)
            {
                Vector3 oldPos = transform.position;

                transform.position = Vector3.Lerp(transform.position, networkedLocation, Time.deltaTime * 3 + (lerpByDistance ? Vector3.Distance(transform.position, networkedLocation) : 0));
                transform.rotation = Quaternion.Lerp(transform.rotation, networkedRotation, Time.deltaTime * 3 + (lerpByDistance ? Vector3.Distance(oldPos, networkedLocation) : 0));
            }
        }

    }
}

#endif
