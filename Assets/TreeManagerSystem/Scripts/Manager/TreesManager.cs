using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System;
using UnityEngine.Networking;
using TreeManager.Threading;

using StopWatch = System.Diagnostics.Stopwatch;

#if ForgeExtension
using BeardedManStudios.Forge;
using BeardedManStudios.Network;
using BeardedManStudios.Network.Unity;
#endif

public delegate void TreeConvertedEvent(TreeInstance treeInstance, GameObject convertedGameObject, Vector3 position);

namespace TreeManager
{
    public class TreesManager : MonoBehaviour
    {
        #region Variables
        readonly Dictionary<Vector3, ResourceObject> Resources = new Dictionary<Vector3, ResourceObject>();
        public List<TreesManagerTreePrototypeData> prototypesData = new List<TreesManagerTreePrototypeData>();

        public const string RESOURCES_SAVEPATH = "TMS_Resources.txt?tag=data";
        public static TreesManager instance;
        public static List<TreeAOI> listedAOIs = new List<TreeAOI>();
        public static PollManager poll = new PollManager();

        private static Seasons _currentSeason = Seasons.Summer;
        public static Seasons currentSeason
        {
            get { return _currentSeason; }
            set
            {
                if(value != _currentSeason)
                {
                    _currentSeason = value;
                    TreesManager.instance.ChangeSeason(value);
                }
            }
        }

        public static List<TerrainInfo> terrains = new List<TerrainInfo>();

        public bool respawnTrees = false;
        public float respawnTime = 5;
        public float checkTreesFrequenty = 5;
        public float restoreIdleTreesTime = 2;

        public bool SaveResources = false;

        public int InitialPollAmount = 10;

        public int sectorSliceX = 60; // This will be dependent on your terrain size, the default value should be good for medium-large sized terrains.
        public int sectorSliceZ = 60; // This will be dependent on your terrain size, the default value should be good for medium-large sized terrains.

        public bool hasSeasonSupport = false;

        [System.NonSerialized]
        List<RestoreDataClass> originalTreeInstances = new List<RestoreDataClass>();

        public bool isNetworkedAuth = true;

        private DateTime now
        {
            get { return DateTime.Now; }
        }

        public static bool hasControl
        {
            get
            {
                #if BoltExtension
                    return BoltNetwork.isServer || !TreesManager.instance.isNetworkedAuth;
                #elif PhotonExtension
                    return PhotonNetwork.isMasterClient || !TreesManager.instance.isNetworkedAuth;
                #elif UNetExtension
                    var view = instance.GetComponent<NetworkIdentity>();
                    return view.isServer || !TreesManager.instance.isNetworkedAuth;
                #elif ForgeExtension
                    return Networking.PrimarySocket.IsServer || !TreesManager.instance.isNetworkedAuth;
                #else
                    return true;
                #endif
            }
        }
        public static bool isNetworkServer
        {
            get
            {
                    #if BoltExtension
                        return BoltNetwork.isServer;
                    #elif PhotonExtension
                        return PhotonNetwork.isMasterClient;
                    #elif UNetExtension
                        var view = instance.GetComponent<NetworkIdentity>();
                        return view.isServer;
                    #elif ForgeExtension
                        return Networking.PrimarySocket.IsServer;
                    #else
                        return true;
                    #endif
            }
        }
        #endregion

        #region Events

        public event TreeConvertedEvent OnTreeConverted;

        #endregion

        #region Methods

        /// <summary>
        /// This method, calls on the awake of the script and it will initiate all the parameters and all the methods it needs.
        /// </summary>
        public void Awake()
        {
            Init();

            CreatePoll();
        }

        /// <summary>
        /// Calls TMS thread unity thread.
        /// </summary>
        void Update()
        {
            TMSThreadingManager.UnityThread();
        }

        /// <summary>
        /// Called on awake, will initiate all base values in order for the editor to work.
        /// </summary>
        public void Init()
        {
            instance = this;
            Terrain[] activeTerrains = Terrain.activeTerrains;
            OnTreeConverted += TreeConverted;

            for (int i = 0; i < activeTerrains.Length; i++)
            {
                if (activeTerrains[i].transform.tag == "Terrain")
                {
                    terrains.Add(new TerrainInfo(activeTerrains[i], terrains.Count));
                    originalTreeInstances.Add(new RestoreDataClass(activeTerrains[i].terrainData.treeInstances, activeTerrains[i].terrainData.treePrototypes));
                }
            }
        }

        /// <summary>
        /// Called on start, it will create all the poll, convert world trees and also initiate all sector calculations.
        /// </summary>
        IEnumerator Start()
        {
            #if PhotonExtension
            while(!PhotonNetwork.inRoom)
            {
                //Wait for us to log into a room so we can really check if we are a MasterClient or not.
                yield return new WaitForEndOfFrame();
            }

            #else
            //Just initiate some yield method.
            yield return null;
            #endif

            TMSThreadingManager.StartThread();

            RestartSectors();

            HandleWorldObjects();

            if (isNetworkServer) StartCoroutine(HandleResources());

            #if EasySaveExtension
            if (isNetworkServer) Load();
            #endif
        }

        /// <summary>
        /// Calls when a tree changed
        /// </summary>
        /// <param name="tree"></param> the changed tree instance
        /// <param name="go"></param> the changed tree game object
        /// <param name="pos"></param> the change tree pos
        void TreeConverted(TreeInstance tree, GameObject go, Vector3 pos)
        {

        }

        /// <summary>
        /// Calls the createPoll ienumerator.
        /// </summary>
        void CreatePoll()
        {
            StartCoroutine(CreatePollEnumerator());
        }

        /// <summary>
        /// Create our basic pool
        /// </summary>
        IEnumerator  CreatePollEnumerator()
        {
            #if PhotonExtension
            while(!PhotonNetwork.inRoom)
            {
                //Wait for us to log into a room so we can really check if we are a MasterClient or not.
                yield return new WaitForEndOfFrame();
            }
            #else
            //Just initiate some yield method.
            yield return new WaitForEndOfFrame();
            #endif

            Terrain terrain;
            TreePrototype treePrototye;
            bool isNetworkedObject;

            GameObject pollParent = new GameObject();
            pollParent.name = "Objects Poll";

            for (int i = 0; i < terrains.Count; i++)
            {
                terrain = terrains[i].terrain;

                for (int b = 0; b < terrain.terrainData.treePrototypes.Length; b++)
                {
                    treePrototye = terrain.terrainData.treePrototypes[b];
                    isNetworkedObject = treePrototye.IsNetworkedInstance();

                    if (isNetworkedObject && !isNetworkServer || string.IsNullOrEmpty(treePrototye.prefab.name)) continue;

                    for (int c = 0; c < InitialPollAmount; c++)
                    {
                        InstantiateWithAction(treePrototye.prefab, isNetworkedObject, (GameObject instantiatedGameObject) =>
                        {
                            instantiatedGameObject.name = instantiatedGameObject.name.Replace("(Clone)", "");
                            instantiatedGameObject.transform.parent = pollParent.transform;
                            instantiatedGameObject.transform.position = new Vector3(0, -999, 0);

                            poll.AddToPoll(instantiatedGameObject.transform);
                        });
                    }
                }
            }
        }

        /// <summary>
        /// Handles all the networking methods of instantiation and returns the right instantiation method.
        /// </summary>
        /// <param name="prefab"></param> the prefab you want to instantiate
        /// <param name="isNetworkedObject"></param> is this object networked?
        /// <param name="action"></param> the action you would like to perform on the created object, naturally it can be a lambada.
        void InstantiateWithAction(GameObject prefab, bool isNetworkedObject, System.Action<GameObject> action)
        {
            GameObject go = null;

            if (isNetworkedObject)
            { 
                #if BoltExtension
                    go = BoltNetwork.Instantiate(prefab).gameObject;
                #elif PhotonExtension
                    go = PhotonNetwork.Instantiate(prefab.name, Vector3.zero, Quaternion.identity, 0);
                #elif UNetExtension
                    go = (GameObject)Instantiate(prefab);
                    NetworkServer.Spawn(go);
                #elif ForgeExtension
                    Networking.Instantiate(prefab, NetworkReceivers.AllBuffered, (SimpleNetworkedMonoBehavior behaviour) => action(behaviour.gameObject));
                #else
                    go = Instantiate(prefab) as GameObject;
                #endif
            }
            else
            {
                go = Instantiate(prefab) as GameObject;
            }

            if(go != null && action != null)
            {
                action(go);
            }
        }

        /// <summary>
        /// This method will handle all the world trees objects on the map and convert them into batched terrain trees.
        /// </summary>
        void HandleWorldObjects()
        {
            WorldTreeScript[] worldTrees = GameObject.FindObjectsOfType<WorldTreeScript>();
            Transform transform;
            int i;

            for (i = 0; i < worldTrees.Length; i++)
            {
                transform = worldTrees[i].transform;
                ConvertWorldTreeToTerrainTree(transform, worldTrees[i].treePrototype);
            }
        }

        TerrainInfo returnTerrainInfo(Terrain terrain)
        {

            for(int i = 0; i < terrains.Count; i++)
            {
                if (terrains[i].terrain.Equals(terrain))
                    return terrains[i];
            }

            return null;
        }

        /// <summary>
        /// Convert a certain world object into a bathced terrain tree.
        /// </summary>
        /// <param name="tree"></param> the tree transform
        /// <param name="treePrototypeID"></param> the id of the tree prototype on the terrain data.
        public void ConvertWorldTreeToTerrainTree(Transform tree, int treePrototypeID)
        {
            var hits = Physics.RaycastAll(new Ray(tree.transform.position + new Vector3(0, 100, 0), Vector3.down), Mathf.Infinity);
            RaycastHit hit;
            TreeInstance tempInstance;
            Terrain terrain;
            Vector3 worldPos = tree.position;
            TerrainInfo terrainInfo;
            TreePrototype treePrototype;
            int treeID;

            for (int i = 0; i < hits.Length; i++)
            {
                hit = hits[i];

                if (hit.transform.tag == "Terrain")
                {
                    terrain = hit.transform.GetComponent<Terrain>();
                    terrainInfo = returnTerrainInfo(terrain);
                    treePrototype = terrain.terrainData.treePrototypes[treePrototypeID];

                    if(terrainInfo == null) return;

                    tempInstance = new TreeInstance();
                    tempInstance.prototypeIndex = treePrototypeID;
                    tempInstance.color = Color.white;
                    tempInstance.heightScale = 1;
                    tempInstance.widthScale = 1;
                    tempInstance.position = ConvertWorldCor2TerrCor(tree.position, terrain.terrainData);
                    tempInstance.lightmapColor = Color.white;
                    terrain.AddTreeInstance(tempInstance);
                    treeID = terrain.terrainData.treeInstanceCount - 1;

                    terrain.Flush();
                    Destroy(tree.gameObject);

                    if (treePrototype.prefab.tag == "Tree")
                        terrainInfo.sector.AddTree(worldPos, treeID, tempInstance, treePrototype.prefab.name);

                    break;
                }
            }

            RestartSectors();
        }

        /// <summary>
        /// Return a prefab according to our season
        /// </summary>
        /// <param name="prototype"></param> the prototype of that tree
        /// <param name="season"></param> the season that we are currently in
        /// <returns></returns>
        GameObject ReturnSeasonPrefab(string prototypeName, Seasons season)
        {
            if (!hasSeasonSupport)
                return null;

            var prot = prototypesData.FirstOrDefault(x => x.prototypeName == prototypeName);

            if (prot == null || prot.SeasonTreesGameObjects[(int)season].prefab == null)
                return null;

            return prot.SeasonTreesGameObjects[(int)season].prefab;
        }

        /// <summary>
        /// Returns a tree instance from a prototype name
        /// </summary>
        /// <param name="terrain"></param> the terrain the prototpye is on
        /// <param name="prototypeName"></param> the prototype name
        /// <returns></returns>
        public TreePrototype GetTreeInstanceFromName(Terrain terrain, string prototypeName)
        {
            var prototypes = terrain.terrainData.treePrototypes;
            TreePrototype tree;

            for (int i = 0; i < prototypes.Length; i++)
            {
                tree = prototypes[i];

                if(tree.prefab.name.ToLower() == prototypeName.ToLower())
                {
                    return tree;
                }
            }

            return null;
        }

        /// <summary>
        /// This method will change all the trees to their season tree if the trees have being assigned.
        /// </summary>
        /// <param name="value"> the season you want to switch to </param> 
        void ChangeSeason(Seasons value)
        {
            TreePrototype[] trees;
            Terrain terrain;
            GameObject prefab;
            TerrainTreePrototype seasonPrototype;

            for (int i = 0; i < terrains.Count; i++ )
            {
                terrain = terrains[i].terrain;

                trees = terrain.terrainData.treePrototypes;

                for (int b = 0; b < terrains[i].seasonPrototypes.Count; b++)
                {
                    seasonPrototype = terrains[i].seasonPrototypes[b];

                    if (seasonPrototype.treePrototype.prefab.tag != "Tree") return;

                    prefab = ReturnSeasonPrefab(seasonPrototype.name, value);

                    if (prefab == null) continue;

                    trees[b].prefab = prefab;
                    terrain.terrainData.treePrototypes = trees;
                }
            }
        }

        /// <summary>
        /// This will convert world coordinates into terrain coordinates, this method is being used when handling the world objects to determine their position on the terrain.
        /// </summary>
        /// <param name="wordCor"></param> the world coordinates you want to convert to terrain coordinates.
        /// <param name="terrainData"></param> the terrainData of the specific terrain that position is on.
        /// <returns></returns> this will return the terrain coordinates of the world coordinates.
        public static Vector3 ConvertWorldCor2TerrCor(Vector3 wordCor, TerrainData terrainData)
        {
            Vector3 vecRet = new Vector3();
            vecRet.x = (wordCor.x / terrainData.size.x);
            vecRet.z = (wordCor.z / terrainData.size.z);
            return vecRet;
        }

        /// <summary>
        /// Convert a terrain cor position into a world position.
        /// </summary>
        /// <param name="TerrainCorPosition"></param> the position in the terrain coordinates
        /// <param name="terrain"></param> the terrain you want to get coordinates of.
        /// <returns></returns> World coordinates of that terrain coordinates.
        public static Vector3 ConvertTerrainPosToWorldPos(Vector3 TerrainCorPosition, Terrain terrain)
        {
            return Vector3.Scale(TerrainCorPosition, terrain.terrainData.size) + terrain.transform.position;
        }

        /// <summary>
        /// This IEnumerator is calling the checkTrees method every several seconds/ minuts and then checks for dead trees that needs to be respawned, 
        /// or trees that needs to be returned into batched terrain trees.
        /// </summary>
        /// <returns></returns>
        IEnumerator HandleResources()
        {
            while (true)
            {
                yield return new WaitForSeconds(checkTreesFrequenty);

                CheckTrees();
            }
        }

        /// <summary>
        /// This method will remove a certain tree from the sectors, and that way the AOI will ignore that tree. 
        /// This is used when converting a tree to an actual GameObject.
        /// </summary>
        /// <param name="position"></param> the position of the tree you want to remove, world coordinates.
        /// <param name="terrain"></param> the terrain that tree is placed on.
        public void RemoveTreeFromSectors(Vector3 position, TerrainInfo terrain)
        {
            terrain.sector.EnableTree(position, false);
        }

        /// <summary>
        /// This method will add a specific tree into the sectors and will make that interactable.
        /// </summary>
        /// <param name="position"></param> the position of the tree, world coordinates.
        /// <param name="tree"></param> the tree instance that you want to add into the sectors.
        /// <param name="terrain"></param> the terrain that tree is placed on.
        void RestoreTreeToSectors(Vector3 position, TerrainInfo terrain)
        {
            terrain.sector.EnableTree(position, true);
        }

        /// <summary>
        /// This method restarts all of the sectors in the terrains, and used on Init or when you make a change on the terrain and want to update the sectors.
        /// PLEASE NOTE:
        /// this method is very expensive and should be used only on init, incase you want to add/ remove trees, please check out the built-in methods for it.
        /// </summary>
        void RestartSectors()
        {
            TerrainInfo terrain;
            int i;
            int b;
            int c;

            List<TreeObject> trees = new List<TreeObject>();
            TreeInstance tree;
            TreeInstance[] TreeInstances;
            TreePrototype treePrototype;

            for (i = 0; i < terrains.Count; i++)
            {
                terrain = terrains[i];

                trees = new List<TreeObject>();

                TreeInstances = terrain.terrain.terrainData.treeInstances;

                for (b = 0; b < TreeInstances.Length; b++)
                {
                    tree = terrain.terrainData.GetTreeInstance(b);
                    treePrototype = terrain.terrainData.treePrototypes[tree.prototypeIndex];

                    if (treePrototype.prefab.tag != "Tree") continue;
                    trees.Add(new TreeObject(tree, b, terrain.terrain, treePrototype.prefab.name));
                }

                Vector3 corner1 = Vector3.Scale(new Vector3(0, 0, 0), terrain.terrainData.size);
                Vector3 corner2 = Vector3.Scale(new Vector3(1, 0, 1), terrain.terrainData.size);
                terrain.sector = new TreeSector(corner1, corner2, sectorSliceX, sectorSliceZ, terrain.terrain);

                TreeObject treeObject;

                for (c = 0; c < trees.Count; c++)
                {
                    treeObject = trees[c];

                    terrain.sector.AddTree(treeObject.position, treeObject.index, treeObject.tree, treeObject.name);
                }
            }
        }

        /// <summary>
        /// Globally refresh ALL the colliders on the poll, and then updates the treesAOI's you have control of.
        /// </summary>
        public void GloballyResetColliders()
        {
            TreeAOI aoi;

            for (int i = 0; i < listedAOIs.Count; i++)
            {
                aoi = listedAOIs[i];

                if (aoi.hasControl)
                {
                    aoi.UpdateTreeAOI();
                }
            }
        }

        /// <summary>
        /// This will reset the collider of the poll that is placed on that tree instance.
        /// 
        /// USAGE:
        /// when converting a tree, you want to reset that position so when u cut it down it will not have a collider on it and interfere with the cutting down process.
        /// it can also be used when you just want to disappear that collider on that certain tree.
        /// 
        /// /// </summary>
        /// <param name="tree"></param> the tree's UID you want to reset the colliders on.
        void GloballyResetColliders(int TreeUID)
        {
            poll.RefreshPoll(TreeUID);
        }

        /// <summary>
        /// This method will run every several seconds/ minuts depends on the variable value, and will check for trees that are dead and needs to be respawned,
        /// or it will return trees to batched trees if not hit for several time.
        /// </summary>
        void CheckTrees()
        {
            var Now = now;
            double TotalMin;
            bool isDead;

            foreach (var tree in Resources)
            {
                TotalMin = (Now - tree.Value.lastHitTime).TotalMinutes;
                isDead = tree.Value.isDead;

                if (((TotalMin >= restoreIdleTreesTime && !isDead) || (TotalMin >= respawnTime && isDead && respawnTrees)) && !TreeSector.convertedAOIResources.ContainsKey(tree.Key))
                {
#if BoltExtension
                    var evnt = SendResourceUpdate.Create(Bolt.GlobalTargets.Everyone, Bolt.ReliabilityModes.ReliableOrdered);
                    evnt.UID = tree.Value.UID;
                    evnt.terrainUID = tree.Value.TerrainUID;
                    evnt.force = false;
                    evnt.restore = true;
                    evnt.Send();
#elif PhotonExtension
                    PhotonView pView = GetComponentInChildren<PhotonView>();
                                pView.RPC("SendTreeDeathUpdate", PhotonTargets.All, tree.Value.UID, tree.Value.TerrainUID, false, true);
#elif UNetExtension
                    UNetTreesNetworkingManager.instance.SendTreesUpdate(tree.Value, true);
#elif ForgeExtension
                    ForgeTreesCallbacksManager.instance.SendTreeUpdate(tree.Value, true, NetworkedTargets.Everyone);
#else
                        RestoreTree(tree.Value.UID, tree.Value.terrain);
#endif

                    return;
                }
            }
        }

        /// <summary>
        /// This method will apply damage to trees based on their world position
        /// </summary>
        /// <param name="pos"></param> the position of the tree you want to apply damage to
        /// <param name="damage"></param> the damage you want to apply to that specific tree.
        public void ApplyDamage(Vector3 pos, byte damage)
        {
            if(!isNetworkedAuth && !isNetworkServer)
            {
                ApplyUnAuthDamage(pos, damage);
                return;
            }

            ResourceObject resource;

            if (Resources.TryGetValue(pos, out resource)) //if the tree is already a prefab in the system means we can start applying damage to it.
            {
                resource.health = (byte)Mathf.Clamp(resource.health - damage, 0, 100);
            }
            else //if the tree is still a terrain tree, lets convert it into an actual GameObject;
            {
                resource = ConvertTree(pos);

                if (resource == null) return;

                ApplyDamage(pos, damage);
            }

            resource.lastHitTime = DateTime.Now;
        }

        void ApplyUnAuthDamage(Vector3 pos, byte damage)
        {
            #if BoltExtension
            var evnt = SendUnAuthDamageEvent.Create(Bolt.GlobalTargets.OnlyServer, Bolt.ReliabilityModes.Unreliable);
            evnt.pos = pos;
            evnt.damage = damage;
            evnt.Send();
            #elif PhotonExtension
            PhotonView pView = GetComponentInChildren<PhotonView>();
            pView.RPC("UnAuthTreeUpdateDamage", PhotonTargets.MasterClient, pos, damage);
            #elif UNetExtension
            UNetTreesNetworkingManager.instance.SendClientUnAuthDamageReport(pos, damage);
            #elif ForgeExtension
            ForgeTreesCallbacksManager.instance.SendUnAuthTreeDamage(pos, damage);
            #else
            ApplyDamage(pos, damage);
            #endif
        }

        /// <summary>
        /// calls when the game stops playing, and will call the returnTrees method to return our terrain trees back to normal.
        /// </summary>
        void OnApplicationQuit()
        {
            ReturnTrees(); // restore trees to how they were.
            TMSThreadingManager.StopThread();

            #if EasySaveExtension
            if(isNetworkServer) Save(); // save resources into a file if you have easy-save integrated.
            #endif
        }

        /// <summary>
        /// this method will take all of the old terrain trees before starting converting them and return them back to normal, that way the cut down trees will not disappear of the terrain when stopping the game.
        /// </summary>
        public void ReturnTrees()
        {
            RestoreDataClass treeInstancesToReturn;

            for (int i = 0; i < originalTreeInstances.Count; i++)
            {
                treeInstancesToReturn = originalTreeInstances[i];

                terrains[i].terrainData.treePrototypes = treeInstancesToReturn.treePrototypes;
                terrains[i].terrainData.treeInstances = treeInstancesToReturn.treesInstances;
            }
        }

        /// <summary>
        /// This method will convert a tree on client side from a terrain tree into an actual gameObject.
        /// </summary>
        /// <param name="pos">the position of the tree on world coordinates.</param>
        /// <returns>The converted tree</returns>
        public ResourceObject ConvertTree(Vector3 pos)
        {
            if (Resources.ContainsKey(pos)) return null;

            TerrainInfo terrain;
            TreeInstance[] terrainInstances;
            TreeInstance tree;
            TreePrototype treePrototype;
            Vector3 treePos;
            PollObject pollItem = null;

            for (int i = 0; i < terrains.Count; i++)
            {
                terrain = terrains[i];
                terrainInstances = terrain.terrainData.treeInstances;

                for (int b = 0; b < terrainInstances.Length; b++)
                {
                    tree = terrain.terrainData.GetTreeInstance(b);
                    treePos = Vector3.Scale(tree.position, terrain.terrainData.size) + terrain.terrain.transform.position;

                    if (treePos == pos)
                    {
                        treePrototype = terrain.terrainData.treePrototypes[tree.prototypeIndex];

                        if (treePrototype.IsNetworkedInstance() && !isNetworkedAuth && !isNetworkServer) // if its networked, lets send an event to the server saying, "convert this object for me"
                        {
                            SendTreeDeathUpdate(new ResourceObject(null, tree, b, i, null), NetworkedTargets.ServerOnly);
                            return null;
                        }

                        if (poll.Poll(ref pollItem, treePrototype.prefab.name))
                        {
                            GameObject InstantiatedTree = pollItem.gameObject;
                            InstantiatedTree.transform.localScale = new Vector3(tree.widthScale, tree.heightScale, tree.widthScale);

                            ResourceObject resource = new ResourceObject(InstantiatedTree, tree, b, terrains[i].TerrainUID, pollItem);

                            Resources.Add(pos, resource);
                            TreeInstance temp = tree;
                            temp.heightScale = 0;

                            terrain.terrainData.SetTreeInstance(b, temp);

                            RemoveTreeFromSectors(pos, terrain);
                            GloballyResetColliders(b);

                            pollItem.Poll(treePos, Quaternion.AngleAxis(tree.rotation * Mathf.Rad2Deg, Vector3.up), b, i, resource);

                            OnTreeConverted(tree, InstantiatedTree, treePos);

                            return resource;
                        }
                    }
                }
            }

            return null;
        }

        /// <summary>
        /// Do we have a resource with this UID ?
        /// </summary>
        /// <param name="UID">UID of the resource</param>
        /// <returns>is the UID contained ?</returns>
        bool ResourcesContaines(int UID)
        {
            foreach(var resource in Resources)
            {
                if (resource.Value.UID == UID)
                    return true;
            }

            return false;
        }

        /// <summary>
        /// This method will convert a tree on client side from a terrain tree into an actual gameObject.
        /// </summary>
        /// <param name="UID"></param> the UID of the tree you want to convert
        /// <param name="terrain"></param> the terrain the tree you want to convert is standing on.
        /// <returns></returns>
        public ResourceObject ConvertTree(int UID, Terrain terrain)
        {
            if (ResourcesContaines(UID)) return null;

            TerrainData terrainData = terrain.terrainData;

            TreeInstance tree;
            TreePrototype treePrototype;
            Vector3 treePos;

            PollObject pollItem = null;

            tree = terrainData.GetTreeInstance(UID);

            if (!tree.Equals(null))
            {
                treePos = Vector3.Scale(tree.position, terrainData.size) + terrain.transform.position;

                treePrototype = terrainData.treePrototypes[tree.prototypeIndex];

                if (poll.Poll(ref pollItem, treePrototype.prefab.name))
                {
                    GameObject InstantiatedTree = pollItem.gameObject;
                    InstantiatedTree.transform.localScale = new Vector3(tree.widthScale, tree.heightScale, tree.widthScale);

                    ResourceObject resource = new ResourceObject(InstantiatedTree, tree, UID, ReturnTerrainID(terrain), pollItem);
                    Resources.Add(treePos, resource);
                    TreeInstance temp = tree;
                    temp.heightScale = 0;

                    terrainData.SetTreeInstance(UID, temp);
                    RemoveTreeFromSectors(treePos, terrains.FirstOrDefault(x => x.terrain.Equals(terrain)));
                    GloballyResetColliders(UID);

                    pollItem.Poll(treePos, Quaternion.AngleAxis(tree.rotation * Mathf.Rad2Deg, Vector3.up), UID, ReturnTerrainID(terrain), resource);

                    OnTreeConverted(tree, InstantiatedTree, treePos);

                    return resource;
                }
            }

            return null;
        }

        /// <summary>
        /// This method will convert a tree on client side from a terrain tree into an actual gameObject.
        /// </summary>
        /// <param name="UID"></param> the UID of the tree you want to convert
        /// <param name="terrain"></param> the terrain the tree you want to convert is standing on.
        /// <param name="treePos">The position of the tree you want to convert</param>
        /// <returns></returns>
        public ResourceObject ConvertTree(int UID, Vector3 treePos, Terrain terrain)
        {
            if (Resources.ContainsKey(treePos)) return null;

            TerrainData terrainData = terrain.terrainData;

            TreeInstance tree;
            TreePrototype treePrototype;

            PollObject pollItem = null;

            tree = terrainData.GetTreeInstance(UID);

            if (!tree.Equals(null))
            {
                treePrototype = terrainData.treePrototypes[tree.prototypeIndex];

                if (poll.Poll(ref pollItem, treePrototype.prefab.name))
                {
                    GameObject InstantiatedTree = pollItem.gameObject;
                    InstantiatedTree.transform.localScale = new Vector3(tree.widthScale, tree.heightScale, tree.widthScale);

                    ResourceObject resource = new ResourceObject(InstantiatedTree, tree, UID, ReturnTerrainID(terrain), pollItem);
                    Resources.Add(treePos, resource);
                    TreeInstance temp = tree;
                    temp.heightScale = 0;

                    terrainData.SetTreeInstance(UID, temp);
                    RemoveTreeFromSectors(treePos, terrains.FirstOrDefault(x => x.terrain.Equals(terrain)));
                    GloballyResetColliders(UID);

                    pollItem.Poll(treePos, Quaternion.AngleAxis(tree.rotation * Mathf.Rad2Deg, Vector3.up), UID, ReturnTerrainID(terrain), resource);

                    OnTreeConverted(tree, InstantiatedTree, treePos);

                    return resource;
                }
            }

            return null;
        }

        /// <summary>
        /// This method will take a terrain and return us the index of that terrain on the terrains array.
        /// </summary>
        /// <param name="terrain"></param> the terrain you want the id off
        /// <returns></returns> returns an index of that terrain on the terrains array.
        int ReturnTerrainID(Terrain terrain)
        {
            for (int i = 0; i < terrains.Count; i++)
            {
                if (terrains[i].terrain.Equals(terrain))
                {
                    return i;
                }
            }

            return 0;
        }

        /// <summary>
        /// This method will run on client side and it will return a dead tree to life, it will also update our sectors.
        /// </summary>
        /// <param name="TreeUID"></param> the treeUID you want to revive, hosted on the converted trees dictionary.
        /// <param name="terrain"></param> the terrain that tree was placed on.
        /// <param name="isThroughDifferentThread">Are we running this method from a different thread ?</param>
        public void RestoreTree(int TreeUID, Terrain terrain)
        {
            ResourceObject tree;
            TerrainInfo terrainInfo;

            tree = Resources.Values.FirstOrDefault(x => x.UID == TreeUID);

            if (tree != null)
            {
                TerrainData terrainData = tree.terrainData;
                terrainInfo = terrains.FirstOrDefault(x => x.terrain == terrain);

                terrainData.SetTreeInstance(tree.UID, tree.oldTreeInstance);

                if (tree.pollObject != null)
                    tree.pollObject.ReturnToPoll();

                Resources.Remove(tree.startPos);

                TreeSector.convertedAOIResources.Remove(tree.startPos);

                RestoreTreeToSectors(tree.startPos, terrainInfo);

                return;
                //}
                //}
            }
        }

        /// <summary>
        /// This method will run on client side and it will return a dead tree to life, it will also update our sectors.
        /// </summary>
        /// <param name="pos">The position of our tree that we want to restore</param>
        /// <param name="isThroughDifferentThread">Are we running this method from a different thread?</param>
        public void RestoreTree(Vector3 pos)
        {
            UnityEngine.Profiling.Profiler.maxNumberOfSamplesPerFrame = 7999999;

            ResourceObject tree;
            TerrainInfo terrainInfo;

            if (Resources.TryGetValue(pos, out tree))
            {
                Terrain terrain = tree.terrain;

                TerrainData terrainData = tree.terrainData;

                terrainInfo = terrains.FirstOrDefault(x => x.terrain == terrain);

                //RaycastHit hit;

                //if (Physics.Raycast(new Ray(tree.startPos + new Vector3(0, 100, 0), Vector3.down), out hit, 1000f))
                //{
                //if (hit.transform.tag == "Terrain" || hit.transform.tag == "Tree" || hit.transform.tag == "Untagged")
                //{

                terrainData.SetTreeInstance(tree.UID, tree.oldTreeInstance);

                if (tree.pollObject != null)
                    tree.pollObject.ReturnToPoll();

                Resources.Remove(tree.startPos);

                TreeSector.convertedAOIResources.Remove(tree.startPos);

                RestoreTreeToSectors(tree.startPos, terrainInfo);

                return;
                //}
                //}
            }
        }
        

        /// <summary>
        /// Restores a certain resource into the terrain and sectors
        /// </summary>
        /// <param name="terrainInfo">the terrain the resource is located on</param>
        /// <param name="UID">the resource UID in the terrain prototypes array</param>
        public void ReturnInstanceToTerrain(TerrainInfo terrainInfo, int UID)
        {
            TerrainData terrainData = terrainInfo.terrainData;
            Terrain terrain = terrainInfo.terrain;
            TreeInstance tree = terrainData.GetTreeInstance(UID);
            TreeInstance temp;
            Vector3 worldCor = ConvertTerrainPosToWorldPos(tree.position, terrain);
            RaycastHit hit;
            ResourceObject resourceObject;


            if (Physics.Raycast(new Ray(worldCor + new Vector3(0, 100, 0), Vector3.down), out hit, 1000f))
            {
                if (hit.transform.tag == "Terrain" || hit.transform.tag == "Tree" || hit.transform.tag == "Untagged")
                {
                    temp = tree;
                    temp.heightScale = 1;

                    terrainData.SetTreeInstance(UID, temp);

                    if(Resources.TryGetValue(worldCor, out resourceObject))
                    {
                        Resources.Remove(worldCor);
                    }

                    RestoreTreeToSectors(worldCor, terrains.FirstOrDefault(x => x.terrain == terrain));
                    
                    return;
                }
            }

        }

        /// <summary>
        /// Removes a certain tree instance from the terrain and the sectors.
        /// </summary>
        /// <param name="terrain"></param> The terrain the tree is on, you can use raycast to check that.
        /// <param name="pos"></param> the world position of the tree
        /// <param name="TreeIndex"></param> the index of the tree in the TreeInstances array of the terrain. ( you can loop over the array and find the index ).
        /// <param name="tree"></param> the tree instance of the tree you want to remove.
        public void RemoveInstanceFromTerrain(Terrain terrain, Vector3 pos, int TreeIndex, TreeInstance tree)
        {
            TreeInstance temp = tree;
            temp.heightScale = 0;

            terrain.terrainData.SetTreeInstance(TreeIndex, temp);
            TreesManager.instance.RemoveTreeFromSectors(pos, TreesManager.terrains.FirstOrDefault(x => x.terrain.Equals(terrain)));
            TreesManager.instance.GloballyResetColliders();
        }

        /// <summary>
        /// Removes a tree from the terrain instances and sectors
        /// </summary>
        /// <param name="terrain"></param> the terrain the tree instance is on
        /// <param name="treeUID"></param> the tree uid.
        public void RemoveInstanceFromTerrain(TerrainInfo terrain, int treeUID)
        {
            TreeInstance tree = terrain.terrainData.GetTreeInstance(treeUID);

            TreeInstance temp = tree;
            temp.heightScale = 0;

            terrain.terrainData.SetTreeInstance(treeUID, temp);
            TreesManager.instance.RemoveTreeFromSectors(ConvertTerrainPosToWorldPos(tree.position, terrain.terrain), terrain);
            TreesManager.instance.GloballyResetColliders();
        }

        /// <summary>
        /// Kill a tree on client side, this is the method that is called after receiving information from the server, or just running this function when on single player.
        /// </summary>
        /// <param name="UID">the UID of the tree you want to kill</param>
        /// <param name="force">is it going to be insta death ( that means that it will not fall but will insta disappear, its used for late joiners ).</param> 
        /// <param name="terrain">the terrain the tree that you want to kill is placed on.</param>
        public ResourceObject KillATree(int UID, bool force, Terrain terrain)
        {
            ResourceObject resource;

            resource = Resources.Values.FirstOrDefault(x => x.UID == UID);

            if (resource != null)
            {
                if (resource.gameObject.transform.GetComponent<IHittable>() != null)
                {
                    resource.gameObject.transform.GetComponent<IHittable>().Die(force);
                    resource.isDead = true;
                } 
            }
            else
            {
                resource = ConvertTree(UID, terrain);

                if (resource.gameObject.transform.GetComponent<IHittable>() == null) return null;
                resource.gameObject.transform.GetComponent<IHittable>().Die(force);
                resource.isDead = true;
            }

            return resource;
        }

        /// <summary>
        /// Send information about the tree we killed, the system will handle the updating automatically for you.
        /// </summary>
        /// <param name="tree"> the information of the tree you killed </param>
        public void SendTreeDeathUpdate(ResourceObject tree, NetworkedTargets targets)
        {
            bool Networked = tree.terrain.terrainData.treePrototypes[tree.oldTreeInstance.prototypeIndex].IsNetworkedInstance();

            if ((hasControl && !Networked) || (!isNetworkedAuth && Networked && !isNetworkServer))
            {
                #if BoltExtension

                var evnt = SendResourceUpdate.Create(targets == NetworkedTargets.Everyone ? Bolt.GlobalTargets.Everyone : Bolt.GlobalTargets.OnlyServer, Bolt.ReliabilityModes.ReliableOrdered);
                evnt.UID = tree.UID;
                evnt.terrainUID = tree.TerrainUID;
                evnt.force = false;
                evnt.restore = false;
                evnt.Send();

#elif PhotonExtension

                PhotonView pView = GetComponentInChildren<PhotonView>();
                pView.RPC("SendTreeDeathUpdate", targets == NetworkedTargets.Everyone ? PhotonTargets.All : PhotonTargets.MasterClient, tree.UID, tree.TerrainUID, false, false);

#elif UNetExtension

                UNetTreesNetworkingManager.instance.SendTreesUpdate(tree, false);

#elif ForgeExtension
                ForgeTreesCallbacksManager.instance.SendTreeUpdate(tree, false, targets);
                #else
                KillATree(tree.UID, false, tree.terrain);
                #endif
            }
            else if (Networked && isNetworkServer)
            {
                KillATree(tree.UID, false, tree.terrain);
            }
        }

        /// <summary>
        /// this function will return us all of the dead trees that we have hosted on our client
        /// </summary>
        /// <returns></returns> returns dead trees.
        public KeyValuePair<Vector3, ResourceObject>[] ReturnDeadResources()
        {
            return Resources.Where(x => x.Value.isDead).ToArray();
        }

        #endregion

        #region EasySaveIntegration

        #if EasySaveExtension

        public void Save()
        {
            if (!SaveResources) return;

            var data = ReturnSaveableData();

            Debug.Log(string.Format("------ TMS Saving Data : {0} Resources Found : {1} Dead Resources : {2} ------", System.DateTime.Now, data.Count, data.Count));

            ES2.Save(data, RESOURCES_SAVEPATH);
        }

        public void Load()
        {
            if (!SaveResources) return;

            if(ES2.Exists(RESOURCES_SAVEPATH))
            {
                var data = ES2.LoadList<ResourceSaveData>(RESOURCES_SAVEPATH);
                ResourceObject convertedResource;
                Terrain terrain;
                DateTime StartTime = DateTime.Now;

                Debug.Log(string.Format("------ TMS Loading Data : {0} Resources Found : {1} Dead Resources : {2} ------", StartTime, data.Count, data.Count));

                foreach(var resource in data)
                {
                    terrain = terrains[resource.terrainUID].terrain;

                    convertedResource = ConvertTree(resource.UID, terrain);
                    SendTreeDeathUpdate(convertedResource, NetworkedTargets.Everyone);

                    Debug.Log(ReturnDeadResources().Length);

                    if(convertedResource != null)
                    {
                        if (!resource.isAlreadyPolled) //is it polled?
                        {
                            convertedResource.gameObject.transform.position = resource.pos;
                            convertedResource.gameObject.transform.rotation = resource.rotation;
                        }
                        else
                        {
                            if(convertedResource.pollObject != null)
                                convertedResource.pollObject.ReturnToPoll();
                        }
                    }
                }

                Debug.Log(string.Format("------ TMS Has Finished Loading Data, Time Taken : {0} ------", StartTime - System.DateTime.Now));
            }
        }

        public List<ResourceSaveData> ReturnSaveableData()
        {
            List<ResourceSaveData> data = new List<ResourceSaveData>();

            foreach(var resource in Resources)
            {
                if(resource.Value.isDead)
                    data.Add(new ResourceSaveData(resource.Value));
            }

            return data;
        }

        #endif

        #endregion
    }

    public class ResourceSaveData
    {
        public byte health;
        public int terrainUID;
        public int UID;

        public bool isAlreadyPolled;

        public Vector3 pos;
        public Quaternion rotation;

        public ResourceSaveData()
        {

        }

        public ResourceSaveData(ResourceObject resource)
        {
            this.health = resource.health;
            this.terrainUID = resource.TerrainUID;
            this.UID = resource.UID;

            this.isAlreadyPolled = resource.pollObject == null || !resource.pollObject.occupied;

            this.pos = resource.gameObject.transform.position;
            this.rotation = resource.gameObject.transform.rotation;
        }

    }

    public class ResourceObject
    {
        public GameObject gameObject;
        public PollObject pollObject;
        public TreeInstance oldTreeInstance;
        public Vector3 startPos;
        protected byte _health;
        public System.DateTime lastHitTime;
        public int UID;
        public Terrain terrain;
        public TerrainData terrainData;
        public int TerrainUID;

        public byte health
        {
            get { return _health; }
            set
            {
                if (_health != value)
                {
                    _health = value;
                    if (value == 0)
                    {
                        TreesManager.instance.SendTreeDeathUpdate(this, NetworkedTargets.Everyone);
                        isDead = true;
                    }
                }
            }
        }

        public bool isDead
        {
            get;
            set;
        }

        public ResourceObject(GameObject go, TreeInstance oldTreeInstance, int treeIndex, int _terrainID, PollObject poll)
        {
            terrain = TreesManager.terrains[_terrainID].terrain;
            terrainData = terrain.terrainData;
            this.TerrainUID = _terrainID;
            gameObject = go;
            this.pollObject = poll;
            health = 100;
            startPos = Vector3.Scale(oldTreeInstance.position, terrain.terrainData.size) + terrain.transform.position;
            lastHitTime = System.DateTime.Now;
            this.oldTreeInstance = oldTreeInstance;
            this.UID = treeIndex;
        }
    }

    public class SectorItem
    {
        public Vector3 position;
        public TreeInstance tree;
        public string name;
        public int TreeID;

        public bool enabled = true;

        public SectorItem(Vector3 pos, TreeInstance tree, int InstanceIndex, string name)
        {
            this.position = pos;
            this.tree = tree;
            this.name = name;
            this.TreeID = InstanceIndex;
        }
    }

    public class TreeSector
    {
        private int sectorSlicesX = 100;
        private int sectorSlicesZ = 100;
        private List<SectorItem>[] sectors;
        public static readonly Dictionary<Vector3, ResourceObject> convertedAOIResources = new Dictionary<Vector3, ResourceObject>();

        private float X_min, X_max, X_range;
        private float Z_min, Z_max, Z_range;

        Terrain terrain;
        Vector3 terrainPos;

        public TreeSector(Vector3 corner1, Vector3 corner2, int _sectorSlicesX, int _sectorSlicesZ, Terrain terrain)
        {
            this.terrain = terrain;
            this.terrainPos = terrain.transform.position;

            Vector3 terrainPos = terrain.transform.position;
            sectorSlicesX = _sectorSlicesX;
            sectorSlicesZ = _sectorSlicesZ;

            sectors = new List<SectorItem>[_sectorSlicesX * _sectorSlicesZ];

            for (int i = 0; i < _sectorSlicesX * _sectorSlicesZ; i++)
                sectors[i] = new List<SectorItem>();

            //corner1 -= terrainPos;
            //corner2 -= terrainPos;

            X_min = Mathf.Min(corner1.x, corner2.x);
            X_max = Mathf.Max(corner1.x, corner2.x);
            X_range = (X_max - X_min);

            Z_min = Mathf.Min(corner1.z, corner2.z);
            Z_max = Mathf.Max(corner1.z, corner2.z);
            Z_range = (Z_max - Z_min);
        }

        private int SectorXZ_to_SectorIndex(int x, int z)
        {
            return Mathf.Abs((x + sectorSlicesX * z));
        }

        private int XZ_to_SectorIndex(float xPos, float zPos)
        {
            xPos -= terrainPos.x;
            zPos -= terrainPos.z;

            int xSec = (int)((sectorSlicesX * xPos) / X_range);
            int zSec = (int)((sectorSlicesZ * zPos) / Z_range);

            return Mathf.Abs(SectorXZ_to_SectorIndex(xSec, zSec));
        }

        private int Vector3_to_SectorIndex(Vector3 v)
        {
            float xPos = (v.x - X_min);
            float zPos = (v.z - Z_min);

            return Mathf.Abs(XZ_to_SectorIndex(xPos, zPos));
        }

        public void EnableTree(Vector3 position, bool value)
        {
            int sectorIndex = Vector3_to_SectorIndex(position);

            List<SectorItem> sector;
            SectorItem sectorItem;

            if (sectors.Length < sectorIndex) return;

            sector = sectors[sectorIndex];

            for (int i = 0; i < sector.Count; i++)
            {
                sectorItem = sector[i];

                if (sectorItem.position == position)
                {
                    sectorItem.enabled = value;
                    return;
                }
            }
        }

        public void AddTree(Vector3 location, int index, TreeInstance tree, string name)
        {
            int sectorIndex = Vector3_to_SectorIndex(location);

            if (sectors.Length < sectorIndex) return;

            SectorItem tsi = new SectorItem(location, tree, index, name);
            sectors[sectorIndex].Add(tsi);
        }

        public List<SectorItem> ReturnSector(Vector3 pos)
        {
            int sectorIndex = Vector3_to_SectorIndex(pos);
            return sectors[sectorIndex];
        }

        private List<int> GetListOfTreeSectorsInRange(Vector3 location, float range)
        {
            List<int> result = new List<int>();

            for (int xx = -1; xx <= 10; xx++)
            {
                float xdiff = X_range / sectorSlicesX;
                for (int zz = -1; zz <= 10; zz++)
                {
                    float zdiff = Z_range / sectorSlicesZ;
                    result.Add(XZ_to_SectorIndex(location.x + (xx * xdiff), location.z + (zz * zdiff)));
                }
            }

            return result;
        }

        public void RemoveTree(Vector3 location)
        {
            int sector = Vector3_to_SectorIndex(location);
            SectorItem tree = sectors[sector].FirstOrDefault(x => x.position == location);

            if (tree != null)
            {
                sectors[sector].Remove(tree);
            }
        }

        public static float Distance(Vector3 posA, Vector3 posB)
        {
            posA.y = 0;
            posB.y = 0;

            Vector3 position;
            position.x = posA.x - posB.x;
            position.z = posA.z - posB.z;

            return Mathf.Sqrt((position.x * position.x) + (position.z * position.z));
        }

        public void MoveCapsulesToClosestTrees(Vector3 playerPos, float range, AOIType type)
        {
            PollManager poll = TreesManager.poll;

            TMSThreadingManager.AddTMSTask(new ThreadTask<Vector3, float>((Vector3 playerCurrentPosition, float _range) =>
                {

                    if (type == AOIType.Convert)
                    {
                        foreach (var resource in convertedAOIResources)
                        {
                            if (Distance(resource.Value.startPos, playerCurrentPosition) > (_range))
                            {
                                
                                TMSThreadingManager.AddUnityTask(new ThreadTask<ResourceObject>((ResourceObject resourceItem) =>
                                {
                                    TreesManager.instance.RestoreTree(resourceItem.startPos);
                                }, resource.Value));
                                

                                MoveCapsulesToClosestTrees(playerPos, range, type); // reset our method to avoid out of sync

                                return;
                            }
                        }
                    }

                    List<int> treeSectorsToSearch = GetListOfTreeSectorsInRange(playerCurrentPosition, _range);

                    int i;
                    int sectorIndex;
                    PollObject pollResult = new PollObject();
                    SectorItem item;

                    Vector3 positionsA, positionsB;
                    float distanceSquaredA, distanceSquaredB;

                    for (i = 0; i < treeSectorsToSearch.Count; i++)
                    {
                        sectorIndex = treeSectorsToSearch[i];

                        if (sectorIndex < 0 || sectorIndex > (sectors.Length - 1))
                            continue;

                        sectors[sectorIndex].Sort(delegate(SectorItem objA, SectorItem objB)
                        {
                            //OBJECT A - PLEASE NOTE. THIS CALCULATION WAY IS THE FASTEST.

                            positionsA.x = playerCurrentPosition.x - objA.position.x;
                            positionsA.z = playerCurrentPosition.z - objA.position.z;

                            distanceSquaredA = positionsA.x * positionsA.x + positionsA.z * positionsA.z;

                            //OBJECT B

                            positionsB.x = playerCurrentPosition.x - objB.position.x;
                            positionsB.z = playerCurrentPosition.z - objB.position.z;

                            distanceSquaredB = positionsB.x * positionsB.x + positionsB.z * positionsB.z;


                            return (distanceSquaredA.CompareTo(distanceSquaredB));
                        });

                        for (int c = 0; c < sectors[sectorIndex].Count; c++)
                        {
                            item = sectors[sectorIndex][c];

                            if (!item.enabled) continue; // skip if tree isnt enabled AKA removed.

                            if (Distance(playerCurrentPosition, item.position) > _range) continue;

                            if (type == AOIType.Capsule)
                            {
                                TMSThreadingManager.AddUnityTask(new ThreadTask<SectorItem>((SectorItem _item) =>
                                {
                                    pollResult = poll.Poll(_item.position, "Collider : " + _item.name, true, playerCurrentPosition, _range);

                                    if (pollResult != null)
                                    {
                                        pollResult.Poll(_item.position, _item.tree);
                                    }
                                }, item));
                            }
                            else
                            {
                                TMSThreadingManager.AddUnityTask(new ThreadTask<SectorItem, Dictionary<Vector3, ResourceObject>, Terrain>((SectorItem _item, Dictionary<Vector3, ResourceObject> tempResources, Terrain _terrain) =>
                                {
                                    ResourceObject resourceTemp = TreesManager.instance.ConvertTree(_item.TreeID, _item.position, _terrain);

                                    if (resourceTemp != null)
                                    {
                                        convertedAOIResources.Add(_item.position, resourceTemp);
                                    }

                                }, item, convertedAOIResources, terrain));
                            }
                        }
                    }
                }, playerPos, range));
        }
    }

    public class TerrainInfo
    {
        public Terrain terrain;
        public TerrainData terrainData;
        public int TerrainUID;
        public List<TerrainTreePrototype> seasonPrototypes = new List<TerrainTreePrototype>();

        public TreeSector sector;

        public TerrainInfo(Terrain terrain, int TerrainID)
        {
            this.terrain = terrain;
            this.TerrainUID = TerrainID;
            this.terrainData = terrain.terrainData;

            for(int i = 0; i < terrainData.treePrototypes.Length; i++)
            {
                seasonPrototypes.Add(new TerrainTreePrototype(terrainData.treePrototypes[i]));
            }
        }
    }

    public enum Seasons
    {
        Summer = 0,
        Winter = 1,
        Spring = 2,
        Autumn = 3
    }

    [Serializable]
    public class TreesManagerTreePrototypeData
    {

        public List<SeasonTreeObject> SeasonTreesGameObjects = new List<SeasonTreeObject>();
        public bool show;
        public string prototypeName;
        public Terrain terrain;
        public bool isNetworkedObject;

        public bool isTrigger;
        public TerrainTreeColliderType colliderType = TerrainTreeColliderType.Capsule;

        //Collider
        public float colliderHeight = 10;
        public float colliderRadius = 0.5f;

        //Box
        public Vector3 colliderSize = Vector3.zero;

        //General
        public Vector3 colliderCenter = new Vector3(0, 5, 0);

        // index 0 = summer
        // index 1 = winter
        // index 2 = sprint
        // index 3 = autumn.

    }

    public class RestoreDataClass
    {
        public TreeInstance[] treesInstances;
        public TreePrototype[] treePrototypes;

        public RestoreDataClass(TreeInstance[] trees, TreePrototype[] treesPrototypes)
        {
            this.treesInstances = trees;
            this.treePrototypes = treesPrototypes;
        }
    }

    [Serializable]
    public class SeasonTreeObject
    {
        public GameObject prefab;
    }

    public class TerrainTreePrototype
    {
        public TreePrototype treePrototype;
        public string name;

        public TerrainTreePrototype()
        {
        }

        public TerrainTreePrototype(TreePrototype prototype)
        {
            this.treePrototype = prototype;
            this.name = prototype.prefab.name;
        }

    }

    public static class TreesManagerExtensions
    {

        public static bool IsNetworkedInstance(this TreePrototype treePrototype)
        {
            if (TreesManager.instance == null) return false;

            var treesManagerPrototypeData = TreesManager.instance.prototypesData.FirstOrDefault(x => x.prototypeName == treePrototype.prefab.name);

            if (treesManagerPrototypeData != null)
            {
                return treesManagerPrototypeData.isNetworkedObject;
            }

            return false;
        }

    }

    public enum TerrainTreeColliderType
    {
        Capsule,
        Box
    }
    
    public enum NetworkedTargets
    {
        Everyone,
        ServerOnly
    }

}
