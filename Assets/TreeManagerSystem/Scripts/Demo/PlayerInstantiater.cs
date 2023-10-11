#if BoltExtension

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

namespace TreeManager
{

    [BoltGlobalBehaviour(BoltNetworkModes.Host)]
    public class PlayerInstantiater : Bolt.GlobalEventListener
    {
        public static List<Player> players = new List<Player>();

        public static int playersCount
        {
            get { return players.Count; }
        }

        public override void SceneLoadLocalDone(string map)
        {
            if (TreesManager.instance == null) return;
            CreatePlayer(null);
        }

        public override void SceneLoadRemoteDone(BoltConnection connection)
        {
            if (TreesManager.instance == null) return;
            CreatePlayer(connection);
        }

        void CreatePlayer(BoltConnection cn)
        {
            new Player(cn).Spawn();
        }
    }

    public class Player
    {
        public BoltConnection cn;
        public BoltEntity player;

        public Player(BoltConnection cn)
        {
            this.cn = cn;
        }

        public void Spawn()
        {
            player = BoltNetwork.Instantiate(BoltPrefabs.Bolt_Player, new Vector3(350, 60, 1279), Quaternion.identity);
            PlayerInstantiater.players.Add(this);

            if (cn == null)
                player.TakeControl();
            else
                player.AssignControl(cn);
        }
    }
}
#endif
