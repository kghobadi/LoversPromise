using UnityEngine;
using System.Collections;

#if BoltExtension

namespace TreeManager
{

    public class DemoPlayerController : Bolt.EntityBehaviour<IDemoPlayerState>
    {
        struct _Input
        {
            public bool forward;
            public bool backwards;
            public bool right;
            public bool left;

            public float pitch;
            public float yaw;

            public bool fire;
            public bool jump;
        }
        _Input _input = new _Input();

        [SerializeField]
        DemoPlayerMotor motor;
        [SerializeField]
        Camera cameraTransform;


        public override void Attached()
        {
            state.Transform.SetTransforms(this.transform);
        }

        void Update()
        {
            GetInputs(true);
        }

        void GetInputs(bool mouse)
        {
            _input.forward = Input.GetKey(KeyCode.W);
            _input.backwards = Input.GetKey(KeyCode.S);
            _input.right = Input.GetKey(KeyCode.D);
            _input.left = Input.GetKey(KeyCode.A);
            _input.jump = Input.GetKey(KeyCode.Space);

            if (mouse)
            {
                _input.yaw += (Input.GetAxisRaw("Mouse X") * 2);
                _input.yaw %= 360;

                _input.pitch += (-Input.GetAxisRaw("Mouse Y") * 2);
                _input.pitch = Mathf.Clamp(_input.pitch, -85, +85);

                if (Input.GetMouseButtonDown(0))
                {
                    _input.fire = true;
                }

                cameraTransform.transform.localEulerAngles = new Vector3(_input.pitch, 0, 0);
            }
        }

        public override void ControlGained()
        {
            cameraTransform.gameObject.SetActive(true);
        }

        public override void SimulateController()
        {
            GetInputs(false);

            IDemoPlayerCommandInput cmd = DemoPlayerCommand.Create();

            cmd.forward = _input.forward;
            cmd.backward = _input.backwards;
            cmd.right = _input.right;
            cmd.left = _input.left;

            cmd.fire = _input.fire;
            cmd.jump = _input.jump;

            cmd.yaw = _input.yaw;
            cmd.pitch = _input.pitch;
            entity.QueueInput(cmd);

            _input.fire = false;
        }

        public override void ExecuteCommand(Bolt.Command command, bool resetState)
        {
            var cmd = (DemoPlayerCommand)command;

            if (resetState)
            {
                motor.SetState(cmd.Result.Position, cmd.Result.Velocity, cmd.Result.IsGrounded, cmd.Result.jumpFrames);
            }
            else
            {
                DemoPlayerMotor.State state = motor.Move(cmd.Input.forward, cmd.Input.backward, cmd.Input.left, cmd.Input.right, cmd.Input.jump, cmd.Input.yaw);

                cmd.Result.Position = state.position;
                cmd.Result.Velocity = state.velocity;
                cmd.Result.jumpFrames = state.jumpFrames;
                cmd.Result.IsGrounded = state.isGrounded;

                if (cmd.IsFirstExecution)
                {
                    InitiateAttack(cmd);
                }
            }
        }

        void InitiateAttack(DemoPlayerCommand cmd)
        {
            if (cmd.Input.fire)
            {
                Ray ray = cameraTransform.ScreenPointToRay(new Vector3(Screen.width / 2, Screen.height / 2));
                var hits = Physics.RaycastAll(ray);
                int i;
                RaycastHit hit;


                for (i = 0; i < hits.Length; i++)
                {
                    hit = hits[i];
                    if (hit.distance > 20) continue;

                    if (hit.transform.GetComponent<IHittable>() != null)
                    {
                        hit.transform.GetComponent<IHittable>().ApplyDamage(40);
                        break;
                    }
                }
            }
        }

    }
}
#endif