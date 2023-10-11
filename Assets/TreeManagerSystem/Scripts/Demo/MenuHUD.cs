#if BoltExtension

using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UdpKit;

namespace TreeManager
{

    public class MenuHUD : Bolt.GlobalEventListener
    {
        [SerializeField]
        InputField ipField;
        [SerializeField]
        int port = 25565;

        private UdpEndPoint ipAdress
        {
            get
            {
                return new UdpEndPoint(UdpIPv4Address.Parse(ipField.text), (ushort)port);
            }
        }

        public override void BoltStartDone()
        {
            if (BoltNetwork.isServer)
                BoltNetwork.LoadScene("DemoSceneBolt");
            else
                BoltNetwork.Connect(ipAdress);
        }

        public void CreateServer()
        {
            BoltLauncher.StartServer(new UdpEndPoint(UdpIPv4Address.Any, (ushort)port));
        }

        public void JoinServer()
        {
            if (string.IsNullOrEmpty(ipField.text)) return;

            BoltLauncher.StartClient();
        }

    }
}
#endif