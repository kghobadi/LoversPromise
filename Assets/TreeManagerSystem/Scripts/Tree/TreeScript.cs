using UnityEngine;
using System.Collections;
using System.Linq;

using DateTime = System.DateTime;

namespace TreeManager
{
    public class TreeScript : MonoBehaviour, IHittable, IPollable
    {
        private bool _isDead = false;

        public bool isDead
        {
            get { return _isDead; }
            set{
                if (value != isDead)
                    _isDead = value;
            }
        }


        [SerializeField]
        Transform TopTreeTransform;

        PollObject pollInstance;

        Renderer[] renderers;
        Collider[] colliders;

        Rigidbody rigid;

        void Start()
        {
            renderers = GetComponentsInChildren<Renderer>();
            colliders = GetComponentsInChildren<Collider>();

            rigid = GetComponent<Rigidbody>();
            if(rigid == null)
            {
                rigid = gameObject.AddComponent<Rigidbody>();
            }

            rigid.isKinematic = true;
        }

        IEnumerator HandleDeath()
        {
            DateTime startTime = DateTime.Now;

            while (true)
            {
                if ((DateTime.Now - startTime).TotalSeconds > 10)
                {
                    Destroy(GetComponent<Rigidbody>());
                    HandleTreeStage(false);
                    yield break;
                }

                Collider[] hits = Physics.OverlapSphere(TopTreeTransform.position, 4.5f);
                foreach (Collider hit in hits)
                {
                    if (hit.transform.tag == "Terrain")
                    {
                        Destroy(GetComponent<Rigidbody>());
                        HandleTreeStage(false);
                        yield break;
                    }
                }
                yield return new WaitForEndOfFrame();
            }
        }

        void HandleTreeStage(bool value)
        {
            //Lets not use destroy(gameObject) because Destroying is a slow process. in the next version i will add Polling for the trees.

            for (int i = 0; i < renderers.Length; i++)
            {
                renderers[i].enabled = value;
            }

            for (int i = 0; i < colliders.Length; i++)
            {
                colliders[i].enabled = value;
            }

            this.enabled = value;

            if (value == false && pollInstance != null)
            {
                pollInstance.ReturnToPoll();
            }
        }

        public void Die(bool force)
        {
            if (isDead) return;

            isDead = true;

            if (force)
            {
                HandleTreeStage(false);
            }
            else
            {
                if (rigid == null) return;

                rigid.isKinematic = false;

                rigid.AddForce(Vector3.forward * 30);

                rigid.mass = 20;

                StartCoroutine(HandleDeath());
            }
        }

        public void ApplyDamage()
        {
            if (isDead) return;
            TreesManager.instance.ApplyDamage(transform.position, 10);
        }

        public void ApplyDamage(byte DMG)
        {
            if (isDead) return;
            TreesManager.instance.ApplyDamage(transform.position, (byte)DMG);
        }

        public void ResetForPoll()
        {
            isDead = false;

            this.enabled = true;
            pollInstance = null;

            if (rigid != null)
                rigid.isKinematic = true;

            StopAllCoroutines();

            HandleTreeStage(true);
        }

        public ResourceObject ConvertTree()
        {
            return null;
        }

        public void Polled(PollObject pollObject)
        {
            this.pollInstance = pollObject;

            isDead = false;
            StopAllCoroutines();
        }
    }
}