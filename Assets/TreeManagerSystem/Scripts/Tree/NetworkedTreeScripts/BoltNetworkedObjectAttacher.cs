using UnityEngine;
using System.Collections;
using System.Linq;

#if BoltExtension


namespace TreeManager
{
    public class BoltNetworkedObjectAttacher : Bolt.EntityBehaviour<ITreeState>, IPollable
    {
        public override void Attached()
        {
            //Assign transform so it can be synced through network.
            state.Transform.SetTransforms(transform);

            //Call back for when a tree was placed ( used for pooling, and then the clients can remove the terrain instance under it instantly. )
            state.AddCallback("UID", () =>
                {
                    if (BoltNetwork.isServer || state.UID == -1) return;

                    Debug.Log("Position : " + transform.position);
                        
                    RaycastHit[] hits = Physics.RaycastAll(new Ray(transform.position + new Vector3(0, 10, 0), -transform.up), 150).OrderBy(x => x.distance).ToArray();
                    Debug.DrawRay(transform.position + new Vector3(0, 10, 0), -transform.up * 150, Color.red, 10);

                    RaycastHit hit;
                    Terrain terrain;
                    TerrainData terrainData;
                    TreeInstance tree;
                    Vector3 worldCor;

                    for (int i = 0; i < hits.Length; i++)
                    {
                        hit = hits[i];

                        if (hit.transform.tag == "Terrain")
                        {
                            terrain = hit.transform.GetComponent<Terrain>();
                            terrainData = terrain.terrainData;

                            tree = terrainData.GetTreeInstance(state.UID);
                            worldCor = TreesManager.ConvertTerrainPosToWorldPos(tree.position, terrain);

                            TreesManager.instance.RemoveInstanceFromTerrain(terrain, worldCor, state.UID, tree);
                            return;
                        }
                    }
                });
        }

        public void ResetForPoll()
        {
            StartCoroutine(delayTillAttached(-1));
        }

        IEnumerator delayTillAttached(int uid)
        {
            while(entity.isAttached == false)
            {
                yield return new WaitForEndOfFrame();
            }

            state.UID = uid;
        }

        public void Polled(PollObject pollObject)
        {
            if(entity.isOwner)
            {
                state.UID = pollObject.treeUID;
            }
        }
    }
} 
#endif