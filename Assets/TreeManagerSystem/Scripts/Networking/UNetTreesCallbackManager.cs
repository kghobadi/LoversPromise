#if UNetExtension

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine.Networking;

namespace TreeManager
{

    public class UNetTreesCallbackManager : NetworkBehaviour
    {
        public static UNetTreesCallbackManager instance;

        void Awake()
        {
            ClientScene.RegisterPrefab(this.gameObject);
        }

        void Start()
        {
            instance = this;
        }
    }

    public class UNetResourceUpdateEvent : MessageBase
    {
        public int UID;
        public int terrainUID;
        public bool force;
        public bool restore;

        public UNetResourceUpdateEvent()
        {
            
        }

        public UNetResourceUpdateEvent(int _uid, int _terrainUID, bool _force, bool _restore)
        {
            this.UID        = _uid;
            this.terrainUID = _terrainUID;
            this.force      = _force;
            this.restore    = _restore;
        }
    }

    public class UNetUnAuthDamageReportEvent : MessageBase
    {
        public Vector3 position;
        public byte damage;

        public UNetUnAuthDamageReportEvent()
        {
            
        }

        public UNetUnAuthDamageReportEvent(Vector3 _pos, byte _damage)
        {
            this.position = _pos;
            this.damage = _damage;
        }
    }

}

#endif