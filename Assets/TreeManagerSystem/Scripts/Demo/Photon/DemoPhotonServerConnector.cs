using UnityEngine;
using System.Collections;


namespace TreeManager
{

#if PhotonExtension

    public class DemoPhotonServerConnector : Photon.PunBehaviour
    {
        public Vector3 spawnPos = Vector3.zero;

        void Start()
        {
            PhotonNetwork.ConnectUsingSettings("DEMO VERSION - TMS V1");
        }

        public override void OnConnectedToMaster()
        {
            RoomOptions room = new RoomOptions();
            room.isVisible = false;
            room.maxPlayers = 20;

            PhotonNetwork.JoinOrCreateRoom("TMS Photon Demo Room", room, TypedLobby.Default);
        }

        public override void OnJoinedRoom()
        {
            GameObject entity;

            entity = PhotonNetwork.Instantiate("Photon_Player", spawnPos, Quaternion.identity, 0);
        }

    }

#endif

}
