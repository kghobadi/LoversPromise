#if ForgeExtension


namespace TreeManager
{
    using UnityEngine;
    using System.Collections;
    using BeardedManStudios.Network;

    public class ForgeDemoInstantiater : MonoBehaviour
    {
        [SerializeField] GameObject playerObject;
        [SerializeField] Transform spawnPoint;

        void Start()
        {
            if (!Networking.PrimarySocket.Connected)
            {
                Networking.connected += delegate(NetWorker socket)
                {
                    Networking.Instantiate(playerObject, spawnPoint.position, spawnPoint.rotation, NetworkReceivers.AllBuffered, CreatedPlayer);
                };
            }
            else
            {
                Networking.Instantiate(playerObject, spawnPoint.position, spawnPoint.rotation, NetworkReceivers.AllBuffered, CreatedPlayer);
            }
        }

        void CreatedPlayer(SimpleNetworkedMonoBehavior go)
        {
            Debug.Log("Player was succesfully created!");
        }
    }
}

#endif