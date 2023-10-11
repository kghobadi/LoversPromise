using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Diagnostics;
using UnityEngine.Networking;

using Debug = UnityEngine.Debug;

#if ForgeExtension
using BeardedManStudios.Network;
#endif


namespace TreeManager
{

    public class TreeAOI
#if ForgeExtension
        : NetworkedMonoBehavior
#else
        : MonoBehaviour
#endif
    {
        #region Variables
        public AOIType aoiType = AOIType.Capsule;
        public int CollidersAmount = 45; // The amount of colliders that will be used to create collisions on trees.
        public int sortingRange = 50; // The max range of tree spotting.
        public float updatingAOIFrequency = 1; // The frequency of updating the AOI.
        private Vector3 OldPosition;
        private GameObject collidersParent;
        private Vector3 oldPosition = Vector3.zero;
        #endregion

        #region Constructors
        public static List<TerrainInfo> terrains
        {
            get { return TreesManager.terrains; }
        }

        public bool isAuth
        {
            get { return TreesManager.instance.isNetworkedAuth; }
        }

        public bool hasControl
        {
            get
            {
            #if BoltExtension
                var entity = GetComponent<BoltEntity>();
                return (entity.isOwner && isAuth) || entity.hasControl;
            #elif PhotonExtension
                var pView = GetComponentInChildren<PhotonView>();
                return (PhotonNetwork.isMasterClient && isAuth) || pView.isMine;
            #elif UNetExtension
                var view = GetComponentInChildren<NetworkIdentity>();
                return (TreesManager.hasControl && isAuth) || view.hasAuthority;
            #elif ForgeExtension
                var view = GetComponentInChildren<BeardedManStudios.Network.NetworkedMonoBehavior>();
                return (TreesManager.hasControl && isAuth) || view.IsOwner;
            #else
                return true;
            #endif
            }
        }
        #endregion

        void OnEnable()
        {
            TreesManager.listedAOIs.Add(this);

            if (aoiType == AOIType.Capsule)
            {
                StartCoroutine(CreateCollidersPoll());
            }
            StartCoroutine(treeUpdater());
        }

        IEnumerator CreateCollidersPoll()
        {
            while(TreesManager.instance == null)
            {
                yield return new WaitForEndOfFrame();
            }

            int a;
            int b;
            TreesManagerTreePrototypeData treeData;

            for (a = 0; a < TreesManager.instance.prototypesData.Count; a++)
            {
                treeData = TreesManager.instance.prototypesData[a];

                for (b = 0; b < CollidersAmount; b++)
                {
                    TreesManager.poll.CreateCollider(this, treeData);
                }
            }
        }

        void Start()
        {
            #if !BoltExtension && !ForgeExtension
            if (!hasControl)
            {
                this.enabled = false;
                return;
            }
            #endif
        }

        #if ForgeExtension

        protected override void NetworkStart()
        {
            Networking.ClientReady(OwningNetWorker);
        }

        #endif

        void OnDisable()
        {
            //Clean our poll, and remove this AOI.

            StopAllCoroutines();

            TreesManager.poll.ClearPoll(this);

            TreesManager.listedAOIs.Remove(this);
        }

        IEnumerator treeUpdater()
        {
            while (true)
            {
                yield return new WaitForSeconds(updatingAOIFrequency);
                if (TreeSector.Distance(transform.position, oldPosition) > 2)
                {
                    oldPosition = transform.position;
                    UpdateTreeAOI();
                }
            }
        }

        void Update()
        {
#if BoltExtension
            if (GetComponent<BoltEntity>().isAttached)
            {
                if (!hasControl)
                    this.enabled = false;
            }
#elif PhotonExtension
            if (!hasControl)
                this.enabled = false;
#endif

        }

        public void UpdateTreeAOI()
        {
            TerrainInfo terrain;

            for (int i = 0; i < terrains.Count; i++)
            {
                terrain = terrains[i];

                terrain.sector.MoveCapsulesToClosestTrees(transform.position, sortingRange, aoiType);
            }
        }
    }


    public class TreeObject
    {
        public Vector3 position;
        public TreeInstance tree;
        public string name;
        public int index;

        public TreeObject(TreeInstance treeInstance, int actualIndex, Terrain terrain, string name)
        {
            this.position = Vector3.Scale(treeInstance.position, terrain.terrainData.size) + terrain.transform.position;
            this.tree = treeInstance;
            this.name = name;
            this.index = actualIndex;
        }
    }

    public enum AOIType
    {
        Convert,
        Capsule
    }

}