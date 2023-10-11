#if BoltExtension

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

namespace TreeManager
{

    [BoltGlobalBehaviour()]
    public class BoltTreesCallbacksManager : Bolt.GlobalEventListener
    {

        public static UdpKit.UdpChannelName ReplicateTreesState;

        public override void SceneLoadRemoteDone(BoltConnection connection)
        {
            if (TreesManager.instance == null || !BoltNetwork.isServer) return;

            KeyValuePair<Vector3, ResourceObject>[] TEMPdeadResources = TreesManager.instance.ReturnDeadResources();
            List<DeadTreeClass> deadResources = new List<DeadTreeClass>();

            foreach (var Resource in TEMPdeadResources)
            {
                deadResources.Add(new DeadTreeClass(Resource.Value.UID, false, true, Resource.Value.TerrainUID, Resource.Value.terrain.terrainData.treePrototypes[Resource.Value.oldTreeInstance.prototypeIndex].IsNetworkedInstance()));
            }

            BinaryFormatter bf = new BinaryFormatter();
            MemoryStream ms = new MemoryStream();
            bf.Serialize(ms, deadResources);

            connection.StreamBytes(ReplicateTreesState, ms.ToArray());
        }

        public override void BoltStartBegin()
        {
            ReplicateTreesState = BoltNetwork.CreateStreamChannel("ReplicateTreesState", UdpKit.UdpChannelMode.Reliable, 1);
        }

        public override void StreamDataReceived(BoltConnection connnection, UdpKit.UdpStreamData data)
        {
            if (data.Channel.Equals(ReplicateTreesState))
                ReceiveLateJoinersDeadTrees(data.Data);
        }

        void ReceiveLateJoinersDeadTrees(byte[] info)
        {
            MemoryStream ms = new MemoryStream();
            BinaryFormatter bf = new BinaryFormatter();

            ms.Write(info, 0, info.Length);
            ms.Seek(0, SeekOrigin.Begin);

            List<DeadTreeClass> deadResources = (List<DeadTreeClass>)bf.Deserialize(ms);

            int i;
            DeadTreeClass resource;

            for (i = 0; i < deadResources.Count; i++)
            {
                resource = deadResources[i];

                if (resource.isNetworked)
                    TreesManager.instance.RemoveInstanceFromTerrain(TreesManager.terrains[resource.TerrainUID], resource.UID);
                else
                    TreesManager.instance.KillATree(resource.UID, resource.force, TreesManager.terrains[resource.TerrainUID].terrain);
            }
        }

        public override void OnEvent(SendResourceUpdate evnt)
        {
            TerrainInfo terrainInfo = TreesManager.terrains[evnt.terrainUID];
            Terrain terrain = terrainInfo.terrain;
            bool isNetworked = terrain.terrainData.treePrototypes[terrain.terrainData.GetTreeInstance(evnt.UID).prototypeIndex].IsNetworkedInstance();

            if (evnt.restore)
            {
                if (isNetworked)
                    TreesManager.instance.ReturnInstanceToTerrain(terrainInfo, evnt.UID);
                else
                    TreesManager.instance.RestoreTree(evnt.UID, terrain);
            }
            else
            {
                TreesManager.instance.KillATree(evnt.UID, evnt.force, terrain);
            }
        }

        public override void OnEvent(SendUnAuthDamageEvent evnt)
        {
            if (TreesManager.instance == null || TreesManager.instance.isNetworkedAuth) return;

            Debug.Log("sss");

            TreesManager.instance.ApplyDamage(evnt.pos, (byte)evnt.damage);
        }

    }

    [System.Serializable]
    class DeadTreeClass
    {
        public int UID;
        public bool restore;
        public bool force;
        public int TerrainUID;
        public bool isNetworked;

        public DeadTreeClass(int UID, bool restore, bool force, int TerrainUID, bool isNetworked)
        {
            this.UID         = UID;
            this.restore     = restore;
            this.force       = force;
            this.TerrainUID  = TerrainUID;
            this.isNetworked = isNetworked;
        }
    }
}
#endif