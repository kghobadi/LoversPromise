
#if PhotonExtension

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

namespace TreeManager
{

    public class PhotonTreesCallbacksManager : Photon.PunBehaviour
    {
        public override void OnPhotonPlayerConnected(PhotonPlayer newPlayer)
        {
            if(PhotonNetwork.isMasterClient)
            {
                if (TreesManager.instance == null) return;
                PhotonView pView = GetComponentInChildren<PhotonView>();

                var deadResources = TreesManager.instance.ReturnDeadResources();

                foreach (var resource in deadResources)
                {
                    if (resource.Value.terrain.terrainData.treePrototypes[resource.Value.oldTreeInstance.prototypeIndex].IsNetworkedInstance()) continue;

                    pView.RPC("SendTreeDeathUpdate", newPlayer, resource.Value.UID, resource.Value.TerrainUID, true, false);
                }
            }
        }

        [PunRPC]
        public void SendTreeDeathUpdate(int UID, int TerrainID, bool force, bool restore)
        {
            TerrainInfo terrainInfo = TreesManager.terrains[TerrainID];
            Terrain terrain = terrainInfo.terrain;
            bool isNetworked = terrain.terrainData.treePrototypes[terrain.terrainData.GetTreeInstance(UID).prototypeIndex].IsNetworkedInstance();

            if (restore)
            {
                if (isNetworked)
                    TreesManager.instance.ReturnInstanceToTerrain(terrainInfo, UID);
                else
                    TreesManager.instance.RestoreTree(UID, TreesManager.terrains[TerrainID].terrain);
            }
            else
            {
                if (isNetworked)
                    TreesManager.instance.RemoveInstanceFromTerrain(TreesManager.terrains[TerrainID], UID);
                else
                    TreesManager.instance.KillATree(UID, force, TreesManager.terrains[TerrainID].terrain);
            }
        }

        [PunRPC]
        void UnAuthTreeUpdateDamage(Vector3 position, byte damage)
        {
            if (TreesManager.instance.isNetworkedAuth) return;

            TreesManager.instance.ApplyDamage(position, damage);
        }

    }
}


#endif