using UnityEngine;
using System.Collections;
using System.Linq;

#if ForgeExtension
using BeardedManStudios.Forge;
using BeardedManStudios.Network;

namespace TreeManager
{
    public class ForgeNetworkedObjectAttacher : NetworkedMonoBehavior , IPollable
    {
        [NetSync("ReceiveUpdate", NetworkCallers.Everyone, NetSync.Interpolate.False)]
        int UID = -1;

        [NetSync("ReceiveUpdate", NetworkCallers.Everyone, NetSync.Interpolate.False)]
        int TerrainUID = -1;


        void ReceiveUpdate()
        {
            if (IsOwner || UID == -1 || TerrainUID == -1) return;

            Terrain terrain = TreesManager.terrains[TerrainUID].terrain;
            TerrainData terrainData = terrain.terrainData;
            TreeInstance tree = terrainData.GetTreeInstance(UID);
            Vector3 worldCor = TreesManager.ConvertTerrainPosToWorldPos(tree.position, terrain);

            TreesManager.instance.RemoveInstanceFromTerrain(terrain, worldCor, UID, tree);
            return;
        }

        public void ResetForPoll()
        {
            UID = -1;
            TerrainUID = -1;
        }

        public void Polled(PollObject pollObject)
        {
            UID = pollObject.treeUID;
            TerrainUID = pollObject.TerrainUID;
        }
    }
} 
#endif