using System.Collections;
using UnityEngine;

public class NPCBirdBrain : MonoBehaviour
{
    [SerializeField] private Animator animator;

    [SerializeField] private bool flyAway = true;
    [SerializeField] private float timeToMaxHeight = 1f;
    [SerializeField] private float maxHeight = 3f;
    [SerializeField] private float horizontalForce = 0.25f;
    [SerializeField] private float updateSeconds = 0.01f;

    [Tooltip("Offsets the idle animation so they aren't synced")]
    [SerializeField] private bool enableAnimationOffset = true;

    [Tooltip("Allows the NPC to spawn in facing left or right")]
    [SerializeField] private bool enableNPCFlipping = true;

    [SerializeField] private AnimationCurve takeOffCurve;

    [Header("Self Destruct Settings")]
    [SerializeField] private bool selfDestructAfterMaxHeight = true;
    [SerializeField] private float timeToDestructAfterMaxHeight = 2f;

    private bool currentlyFlying = false;
    private Vector3 initialPosition;
    private float timeFlying = 0;

    // Start is called before the first frame update
    void Start()
    {
        if (flyAway)
        {
            if (enableAnimationOffset == true && animator != null)
            {
                animator.SetFloat("Idle Offset", Random.Range(0.0f, 1.0f));
            }

            if (enableNPCFlipping == true)
            {
                //flip the npc half the time
                if (Random.Range(0.0f, 1.0f) >= 0.5f)
                {
                    transform.localEulerAngles = new Vector3(0, 180.0f, 0);
                }
            }

            initialPosition = gameObject.transform.position;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (flyAway && !currentlyFlying && other.tag == "Player")
        {
            bool collidedFromRightSide = other.transform.position.x > transform.position.x;
            if (collidedFromRightSide)
            {
                horizontalForce *= -1;
                transform.localRotation = Quaternion.identity;
            }
            else
            {
                transform.localEulerAngles = new Vector3(0, 180.0f, 0);
            }

            currentlyFlying = true;
            StartCoroutine(FlyAway());
        }
    }

    IEnumerator FlyAway()
    {
        float newYposition = 0;

        var delta = updateSeconds;
        var prevTime = 0.0f;
        while (timeFlying < timeToMaxHeight && newYposition <= maxHeight + initialPosition.y)
        {
            timeFlying += delta;
            var positionOnCurve = timeFlying / timeToMaxHeight;
            var heightOnCurve = takeOffCurve.Evaluate(positionOnCurve);
            newYposition = (heightOnCurve * maxHeight) + initialPosition.y;
            transform.position = new Vector3(transform.position.x + horizontalForce, newYposition, initialPosition.z);

            if (animator != null)
            {
                animator.SetBool("moving", true);
            }

            prevTime = Time.time;
            yield return new WaitForSeconds(updateSeconds);

            // for a customizable timestep, WaitForSeconds might wait longer than we want it to,
            //  so we should get the true delta for the update to look correct
            delta = Time.time - prevTime;
        }

        // keep flying horizontal (until its time to die)
        prevTime = Time.time;
        while (!selfDestructAfterMaxHeight || (Time.time - prevTime) < timeToDestructAfterMaxHeight)
        {
            transform.position = new Vector3(transform.position.x + horizontalForce, initialPosition.y, 0);
            yield return new WaitForSeconds(updateSeconds);
        }

        // don't want to keep flying forever!
        Destroy(this.gameObject);
    }
}