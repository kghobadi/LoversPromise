#if UNetExtension

namespace TreeManager
{
    using UnityEngine;
    using System.Collections;
    using System.Collections.Generic;
    using UnityEngine.Networking;

    public class UNetTreesNetworkingManager : NetworkManager
    {
        public static UNetTreesNetworkingManager instance;
        public static NetworkClient client;

        public const short TREE_MESSAGE_ID = 3505;
        public const short TREE_MESSAGE_UNAUTH_DAMAGEREPORT_ID = 3506;

        public override void OnStartClient(NetworkClient client)
        {
            NetworkServer.RegisterHandler(TREE_MESSAGE_ID, TreesUpdateReceived);
            NetworkServer.RegisterHandler(TREE_MESSAGE_UNAUTH_DAMAGEREPORT_ID, OnReceiveTreeDamageUpdate);

            client = NetworkClient.allClients[0];

            client.RegisterHandler(TREE_MESSAGE_ID, TreesUpdateReceived);
            client.RegisterHandler(TREE_MESSAGE_UNAUTH_DAMAGEREPORT_ID, OnReceiveTreeDamageUpdate);

            instance = this;
        }

        void TreesUpdateReceived(NetworkMessage msg)
        {
            UNetResourceUpdateEvent evnt = msg.ReadMessage<UNetResourceUpdateEvent>();
            
            InitiateUpdateInformation(evnt);
        }

        void InitiateUpdateInformation(UNetResourceUpdateEvent data)
        {
            TerrainInfo terrainInfo = TreesManager.terrains[data.terrainUID];
            Terrain terrain = terrainInfo.terrain;
            bool isNetworked = terrain.terrainData.treePrototypes[terrain.terrainData.GetTreeInstance(data.UID).prototypeIndex].IsNetworkedInstance();

            if (data.restore)
            {
                if (isNetworked)
                    TreesManager.instance.ReturnInstanceToTerrain(terrainInfo, data.UID);
                else
                    TreesManager.instance.RestoreTree(data.UID, TreesManager.terrains[data.terrainUID].terrain);
            }
            else
            {
                //TreesManager.instance.KillATree(data.UID, data.force, TreesManager.terrains[data.terrainUID].terrain);
                StartCoroutine(DelayKillTree(data.UID, data.force, TreesManager.terrains[data.terrainUID].terrain, isNetworked, terrainInfo));
            }

        }

        IEnumerator DelayKillTree(int UID, bool force, Terrain terrain, bool isNetworked, TerrainInfo terrainInfo)
        {
            while(TreesManager.instance == null || TreesManager.instance.gameObject.activeInHierarchy == false)
            {
                yield return new WaitForEndOfFrame();
            }

            if (isNetworked)
                TreesManager.instance.RemoveInstanceFromTerrain(terrainInfo, UID);
            else
                TreesManager.instance.KillATree(UID, force, terrain);
        }

        public override void OnServerReady(NetworkConnection conn)
        {
            ClientConnected(conn);
        }

        public static void ClientConnected(NetworkConnection conn)
        {
            if (TreesManager.instance == null || !TreesManager.hasControl) return;

            KeyValuePair<Vector3, ResourceObject>[] deadResources = TreesManager.instance.ReturnDeadResources();

            int i;
            ResourceObject value;
            UNetResourceUpdateEvent evnt = new UNetResourceUpdateEvent();

            for (i = 0; i < deadResources.Length; i++)
            {
                value = deadResources[i].Value;

                if (value.terrain.terrainData.treePrototypes[value.oldTreeInstance.prototypeIndex].IsNetworkedInstance()) continue;

                evnt = new UNetResourceUpdateEvent(value.UID, value.TerrainUID, true, false);

                NetworkServer.SendToClient(conn.connectionId, TREE_MESSAGE_ID, evnt);
            }
        }

        public void SendTreesUpdate(ResourceObject resource, bool restore)
        {
            if(UNetTreesCallbackManager.instance.isServer)
            {
                TransmitTreeUpdateGlobally(resource, restore);
            }
        }
        
        public void SendClientUnAuthDamageReport (Vector3 pos, byte damage)
        {
            UNetUnAuthDamageReportEvent evnt = new UNetUnAuthDamageReportEvent(pos, damage);

            client = NetworkClient.allClients[0];

            if(client != null)
                client.Send(TREE_MESSAGE_UNAUTH_DAMAGEREPORT_ID, evnt);
        }

        void OnReceiveTreeDamageUpdate(NetworkMessage msg)
        {
            if (TreesManager.instance.isNetworkedAuth) return;

            var evnt = msg.ReadMessage<UNetUnAuthDamageReportEvent>();

            TreesManager.instance.ApplyDamage(evnt.position, (byte)evnt.damage);
        }

        void TransmitTreeUpdateGlobally(ResourceObject resource, bool restore)
        {
            UNetResourceUpdateEvent evnt = new UNetResourceUpdateEvent(resource.UID, resource.TerrainUID, false, restore);

            NetworkServer.SendToAll(TREE_MESSAGE_ID, evnt);
        }
    }
}

#endif