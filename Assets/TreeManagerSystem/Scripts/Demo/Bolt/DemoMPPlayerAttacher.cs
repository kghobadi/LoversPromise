using UnityEngine;
using System.Collections;

#if BoltExtension

namespace TreeManager
{

    public class DemoMPPlayerAttacher : Bolt.EntityBehaviour<Bolt.IState>
    {
        [SerializeField]
        TreeAOI AOI;

        public override void Attached()
        {
            if(AOI.hasControl)
            {
                AOI.enabled = true;
            }
        }
    }

}
#endif
