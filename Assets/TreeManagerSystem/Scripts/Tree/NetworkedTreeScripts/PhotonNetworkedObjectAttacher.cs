using UnityEngine;
using System.Collections;


#if PhotonExtension

namespace TreeManager
{
    public class PhotonNetworkedObjectAttacher : MonoBehaviour, IPollable
    {

        #region Variables
        PhotonView pView;
        #endregion

        void Awake()
        {
            pView = GetComponent<PhotonView>();
        }

        void UpdateTreeInstance(int UID, int TerrainUID)
        {
            if (PhotonNetwork.isMasterClient || UID == -1 || TerrainUID == -1) return;

            Terrain terrain = TreesManager.terrains[TerrainUID].terrain;
            TerrainData terrainData = terrain.terrainData;
            TreeInstance tree = terrainData.GetTreeInstance(UID);
            Vector3 worldCor = TreesManager.ConvertTerrainPosToWorldPos(tree.position, terrain);

            TreesManager.instance.RemoveInstanceFromTerrain(terrain, worldCor, UID, tree);
            return;
        }

        public void ResetForPoll()
        {
        }

        public void Polled(PollObject pollObject)
        {
            pView.RPC("ReceiveData", PhotonTargets.All, pollObject.treeUID, pollObject.TerrainUID);
        }

        [PunRPC]
        void ReceiveData(int UID, int TerrainUID)
        {
            UpdateTreeInstance(UID, TerrainUID);
        }
    }
}

#endif