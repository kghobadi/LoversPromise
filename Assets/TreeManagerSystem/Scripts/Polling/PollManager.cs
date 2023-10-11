using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

namespace TreeManager
{

    public class PollManager
    {
        List<PollObject> poll = new List<PollObject>();
        GameObject pollParent;

        public void AddToPoll(Transform item, Rigidbody rigid, TreeAOI owner)
        {
            poll.Add(new PollObject(item, rigid, owner));
        }

        public void AddToPoll(Transform item)
        {
            poll.Add(new PollObject(item));
        }

        public int ReturnAmountOfUsedPoll()
        {
            return poll.Where(x => x.occupied == true).Count();
        }

        public int ReturnAmountOfUnUsedPoll()
        {
            return poll.Where(x => x.occupied == false).Count();
        }

        public bool Poll(ref PollObject item, string name)
        {
            PollObject temp;

            for (int i = 0; i < poll.Count; i++)
            {
                temp = poll[i];

                if (!temp.occupied && temp.transform.name.ToLower() == name.ToLower())
                {
                    item = temp.Poll();
                    return true;
                } 
            }

            return false;
        }

        public PollObject Poll(Vector3 pos, string name, bool LookForAlternative, Vector3 alternativeTarget, float alternativeRange)
        {
            if (AlreadyHasAPoll(pos))
            {
                return null;
            }

            for (int i = 0; i < poll.Count; i++)
            {
                if (!poll[i].occupied && poll[i].name.ToLower() == name.ToLower())
                {
                    return poll[i];
                }
                else if(i == (poll.Count - 1) && LookForAlternative)
                {
                    RefreshPoll(alternativeTarget, alternativeRange);
                }
            }

            return null;
        }

        public void RemoveFromPoll(PollObject item)
        {
            poll.Remove(item);
        }

        public bool AlreadyHasAPoll(Vector3 pos)
        {
            for (int i = 0; i < poll.Count; i++)
            {
                if (Equals(poll[i].pos, pos))
                    return true;
            }

            return false;

        }

        bool Equals(Vector3 a, Vector3 b)
        {
            return a.x == b.x && a.z == b.z;
        }

        public void ClearPoll(TreeAOI owner)
        {
            PollObject item;
            PollObject[] temp = new PollObject[poll.Count];

            poll.CopyTo(temp);

            for (int i = 0; i < temp.Length; i++)
            {
                item = temp[i];

                if (item.owner == owner)
                {
                    GameObject.Destroy(item.gameObject);
                    poll.Remove(item);
                }
            }
        }

        public GameObject CreateCollider(TreeAOI owner, TreesManagerTreePrototypeData data)
        {
            if (data.prototypeName == "") return null;

            if(pollParent == null)
            {
                pollParent = new GameObject();
                pollParent.name = "Poll Parent";
            }

            CapsuleCollider capsuleCollider;
            BoxCollider boxCollider;

            GameObject colliderObject = GameObject.CreatePrimitive(data.colliderType == TerrainTreeColliderType.Capsule ? PrimitiveType.Capsule : PrimitiveType.Cube);
            Rigidbody rigid = colliderObject.AddComponent<Rigidbody>();

            rigid.isKinematic = true;

            GameObject.Destroy(colliderObject.GetComponent<MeshRenderer>());
            GameObject.Destroy(colliderObject.GetComponent<MeshFilter>());

            capsuleCollider = colliderObject.GetComponent<CapsuleCollider>();
            boxCollider = colliderObject.GetComponent<BoxCollider>();

            colliderObject.transform.name = "Collider : "+ data.prototypeName;

            rigid.MovePosition(new Vector3(0, -999, 0));

            if (data.colliderType == TerrainTreeColliderType.Capsule)
            {
                capsuleCollider.center = data.colliderCenter;
                capsuleCollider.height = data.colliderHeight;
                capsuleCollider.radius = data.colliderRadius;

                capsuleCollider.isTrigger = data.isTrigger;
            }
            else
            {
                boxCollider.center = data.colliderCenter;
                boxCollider.size = data.colliderSize;

                boxCollider.isTrigger = data.isTrigger;
            }

            colliderObject.tag = "Tree";
            colliderObject.AddComponent<AOITreeDetection>();

            colliderObject.transform.SetParent(pollParent.transform);

            AddToPoll(colliderObject.transform, rigid, owner);

            return colliderObject;
        }

        public void RefreshPoll(Vector3 target, float range)
        {
            PollObject item;

            for (int i = 0; i < poll.Count; i++)
            {
                item = poll[i];

                if (TreeSector.Distance(target, item.pos) > range)
                {
                    item.ReturnToPoll();
                }
            }
        }

        public void RefreshPoll(int treeUID)
        {
            PollObject item;

            for (int i = 0; i < poll.Count; i++)
            {
                item = poll[i];

                if (item.treeUID.Equals(treeUID))
                {
                    item.ReturnToPoll(true); // force it for instant movement
                }
            }
        }

    }

    public class PollObject
    {
        public Transform transform;
        public bool occupied;
        public GameObject gameObject;
        public string name;

        public TreeAOI owner;
        public int treeUID;
        public int TerrainUID;

        public ResourceObject resource;
        public TreeInstance tree;

        int UID;
        Rigidbody rigid;

        public Vector3 pos = Vector3.zero;

        public PollObject()
        {
            this.transform = null;
            this.occupied = false;
            this.gameObject = null;
            this.name = "";
            this.pos = Vector3.zero;
        }

        public PollObject(Transform transform, Rigidbody rigid, TreeAOI owner)
        {
            this.transform = transform;
            this.owner = owner;
            this.gameObject = transform.gameObject;
            this.rigid = rigid;
            this.occupied = false;
            this.name = gameObject.name;
        }

        public PollObject(Transform transform)
        {
            this.transform = transform;
            this.gameObject = transform.gameObject;
            this.occupied = false;
            this.name = gameObject.name;
        }

        public PollObject Poll()
        {
            occupied = true;
            var pollInteraces = transform.GetComponents<IPollable>();

            if (pollInteraces.Length > 0)
            {
                for (int i = 0; i < pollInteraces.Length; i++)
                {
                    pollInteraces[i].Polled(this);
                }
            }

            return this;
        }

        public void Poll(Vector3 pos, TreeInstance treeInstance)
        {
            var pollInteraces = transform.GetComponents<IPollable>();
            this.pos = pos;

            this.occupied = true;
            this.tree = treeInstance;

            if (rigid != null)
                rigid.MovePosition(pos);
            else
                transform.position = pos;

            if (pollInteraces.Length > 0)
            {
                for (int i = 0; i < pollInteraces.Length; i++)
                {
                    pollInteraces[i].Polled(this);
                }
            }
        }

        public void Poll(Vector3 pos, Quaternion rotation, int UID, int TreeUID, ResourceObject resource)
        {
            var pollInteraces = transform.GetComponents<IPollable>();
            this.pos = pos;

            if (this.resource != null)
                this.resource.pollObject = null;

            this.occupied = true;
            this.treeUID = UID;
            this.resource = resource;

            if (rigid != null)
                rigid.MovePosition(pos);
            else
                transform.position = pos;

            transform.rotation = rotation;

            if (pollInteraces.Length > 0)
            {
                for (int i = 0; i < pollInteraces.Length; i++)
                {
                    pollInteraces[i].Polled(this);
                }
            }
        }

        public void Poll(Vector3 pos, Quaternion rotation, TreeInstance treeInstance)
        {
            var pollInteraces = transform.GetComponents<IPollable>();
            this.pos = pos;

            this.occupied = true;
            this.tree = treeInstance;

            if (rigid != null)
                rigid.MovePosition(pos);
            else
                transform.position = pos;

            transform.rotation = rotation;

            if (pollInteraces.Length > 0)
            {
                for (int i = 0; i < pollInteraces.Length; i++)
                {
                    pollInteraces[i].Polled(this);
                }
            }

        }

        public void ReturnToPoll(bool forced)
        {
            var pollInteraces = transform.GetComponents<IPollable>();
            occupied = false;

            if (this.resource != null)
                this.resource.pollObject = null;

            this.resource = null;

            if (rigid != null && !forced)
                rigid.MovePosition(new Vector3(0, -999, 0));
            else
                transform.position = new Vector3(0, -999, 0);

            this.pos = Vector3.zero;
            transform.rotation = Quaternion.identity;

            if (pollInteraces.Length > 0)
            {
                for (int i = 0; i < pollInteraces.Length; i++)
                {
                    pollInteraces[i].ResetForPoll();
                }
            }
        }

        public void ReturnToPoll()
        {
            ReturnToPoll(false);
        }

    }

}