using UnityEngine;
using System.Collections;
using UnityEngine.Networking;

#if UNetExtension

namespace TreeManager
{
    public class UNetNetworkedObjectAttacher : NetworkBehaviour, IPollable
    {
        [SyncVar(hook = "ReceiveUID")]
        int UID = -1;

        [SyncVar(hook = "ReceiveTerrainUID")]
        int TerrainUID = -1;


        void ReceiveUID(int value)
        {
            Debug.Log(value);
            UID = value;
            ReceiveUpdate();
        }

        void ReceiveTerrainUID(int value)
        {
            Debug.Log(value);
            TerrainUID = value;
            ReceiveUpdate();
        }

        void ReceiveUpdate()
        {
            if (isServer || UID == -1 || TerrainUID == -1) return;

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