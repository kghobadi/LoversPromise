#if ForgeExtension


namespace TreeManager
{
    using UnityEngine;
    using System.Collections;
    using BeardedManStudios.Network;
    using BeardedManStudios.Network.Unity;
    using System.Collections.Generic;

    public class ForgeTreesCallbacksManager : MonoBehaviour
    {
        public const uint UpdateConnectionEventID = 015825U;
        public const uint UnAuthDamageEventID = 5828187U;

        public static ForgeTreesCallbacksManager instance;

        void Awake()
        {
            instance = this;

            if(!Networking.PrimarySocket.Connected) // we are not connected to a server
            {
                Networking.connected += SetupOurClass;
            }
            else
            {
                SetupOurClass(null);
            }
        }

        void SetupOurClass(NetWorker socket)
        {
            Networking.PrimarySocket.clientReady += PlayerIsReady;
            Networking.PrimarySocket.AddCustomDataReadEvent(UpdateConnectionEventID, ReceiveTreesDataStream);
            Networking.PrimarySocket.AddCustomDataReadEvent(UnAuthDamageEventID, ReceiveUnAuthDamageStream);
        }

        void ReceiveTreesDataStream(NetworkingPlayer player, NetworkingStream stream)
        {
            TreesUpdateData data = new TreesUpdateData().Deserialize(stream);

            MainThreadManager.Run( () => InitiateUpdateWithData(data.UID, data.terrainUID, data.force, data.restore) );
        }

        void ReceiveUnAuthDamageStream(NetworkingPlayer player, NetworkingStream stream)
        {
            if (TreesManager.instance == null || TreesManager.instance.isNetworkedAuth) return;

            DamageUpdateData data = new DamageUpdateData().Deserialize(stream);

            MainThreadManager.Run(() => TreesManager.instance.ApplyDamage(data.pos, data.damage));
        }

        void PlayerIsReady(NetworkingPlayer player)
        {
            if (TreesManager.instance == null || !TreesManager.isNetworkServer) return;

            KeyValuePair<Vector3, ResourceObject>[] deadResources = TreesManager.instance.ReturnDeadResources();

            int i;
            ResourceObject value;
            TreesUpdateData evnt = new TreesUpdateData();

            for (i = 0; i < deadResources.Length; i++)
            {
                value = deadResources[i].Value;

                evnt = new TreesUpdateData()
                {
                    UID = value.UID,
                    terrainUID = value.TerrainUID,
                    force = true,
                    restore = false
                };

                evnt.Send(UpdateConnectionEventID, player);
            }
        }

        public void SendTreeUpdate(ResourceObject resource, bool restore, NetworkedTargets targets)
        {
            TreesUpdateData evnt = new TreesUpdateData()
            {
                UID = resource.UID,
                terrainUID = resource.TerrainUID,
                force = false,
                restore = restore
            };

            evnt.Send(UpdateConnectionEventID, targets == NetworkedTargets.Everyone ? NetworkReceivers.All : NetworkReceivers.Server);
        }

        public void SendUnAuthTreeDamage(Vector3 pos, byte damage)
        {
            DamageUpdateData evnt = new DamageUpdateData()
            {
                pos = pos,
                damage = damage
            };

            evnt.Send(UnAuthDamageEventID, NetworkReceivers.Server);
        }

        void InitiateUpdateWithData(int UID, int terrainUID, bool force, bool restore)
        {
            TerrainInfo terrainInfo = TreesManager.terrains[terrainUID];
            Terrain terrain = terrainInfo.terrain;
            bool isNetworked = terrain.terrainData.treePrototypes[terrain.terrainData.GetTreeInstance(UID).prototypeIndex].IsNetworkedInstance();

            if (restore)
            {
                if (isNetworked)
                    TreesManager.instance.ReturnInstanceToTerrain(terrainInfo, UID);
                else
                    TreesManager.instance.RestoreTree(UID, TreesManager.terrains[terrainUID].terrain);
            }
            else
            {
                if (isNetworked)
                    TreesManager.instance.RemoveInstanceFromTerrain(TreesManager.terrains[terrainUID], UID);
                else
                    TreesManager.instance.KillATree(UID, force, TreesManager.terrains[terrainUID].terrain);
            }
        }
    }

    public class TreesUpdateData
    {
        public int UID;
        public int terrainUID;
        public bool force;
        public bool restore;

        private BMSByte cachedData = new BMSByte();

        public void Send(uint id, NetworkingPlayer target)
        {
            cachedData.Clone(Serialize());
            Networking.WriteCustom(id, Networking.PrimarySocket, cachedData, target, true);
        }

        public void Send(uint id, NetworkReceivers targets)
        {
            cachedData.Clone(Serialize());
            Networking.WriteCustom(id, Networking.PrimarySocket, cachedData, true, targets);
        }

        private BMSByte Serialize()
        {
            return ObjectMapper.MapBytes(cachedData, UID, force, terrainUID, restore);
        }

        public TreesUpdateData Deserialize(NetworkingStream stream)
        {
            this.UID = ObjectMapper.Map<int>(stream);
            this.force = ObjectMapper.Map<bool>(stream);
            this.terrainUID = ObjectMapper.Map<int>(stream);
            this.restore = ObjectMapper.Map<bool>(stream);

            return this;
        }
    }

    public class DamageUpdateData
    {
        public Vector3 pos;
        public byte damage;

        private BMSByte cachedData = new BMSByte();

        public void Send(uint id, NetworkingPlayer target)
        {
            cachedData.Clone(Serialize());
            Networking.WriteCustom(id, Networking.PrimarySocket, cachedData, target, true);
        }

        public void Send(uint id, NetworkReceivers targets)
        {
            cachedData.Clone(Serialize());
            Networking.WriteCustom(id, Networking.PrimarySocket, cachedData, true, targets);
        }

        private BMSByte Serialize()
        {
            return ObjectMapper.MapBytes(cachedData, pos, damage);
        }

        public DamageUpdateData Deserialize(NetworkingStream stream)
        {
            this.pos = ObjectMapper.Map<Vector3>(stream);
            this.damage = ObjectMapper.Map<byte>(stream);

            return this;
        }
    }

}

#endif