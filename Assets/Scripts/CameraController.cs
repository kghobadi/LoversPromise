//using UnityEngine;
//using System.Collections;
//using UnityEngine.SceneManagement;

//public class CameraController : MonoBehaviour {

//    public float lookSensitivity = 5;
//    public float yRotation;
//    public float xRotation;
//    public float currentYRotation;
//    public float currentXRotation;
//    public float yRotationV;
//    public float xRotationV;
//    public float lookSmoothness = 0.1f;

//    public float bobspeed = 1;
//    public float stepcounter;
//    public float bobAmountX = 1;
//    public float bobAmountY = 1;
//    Vector3 lastPosition;
//    public float heightRatio = 0.9f;

//    public float zoomTrue = 1;
//    public float cameraDefault = 60;
//    public float targetCamera = 60;
//    public float cameraZoom = 1;
//    public float cameraZoomV = 1;
//    public float cameraZoomSpeed = 0.1f;

//    public AudioSource cameraMan;
//    public AudioClip synthss;
//    public AudioClip detached;

//    //Complicated but self-explanatory. 
//    //Probably a good idea not to mess with it, as I wrote it so long ago I don't even understand how it works. 

//    void Awake ()
//    {
//    }

//    void Update ()
//    {



//    }

//    void LateUpdate ()
//    {

//        //GetComponent<Camera>().fieldOfView = Mathf.Lerp(targetCamera, cameraDefault, cameraZoom);
//        if(SceneManager.GetActiveScene() == SceneManager.GetSceneByName("overworld") || SceneManager.GetActiveScene() == SceneManager.GetSceneByName("testTempest"))
//        {
//            if (Input.GetAxis("Horizontal") > 0 || Input.GetAxis("Vertical") > 0)
//            {
//                stepcounter += Vector3.Distance(lastPosition, transform.parent.position) * bobspeed;
//            }


//            transform.localPosition = new Vector3(Mathf.Sin(stepcounter) * bobAmountX, (Mathf.Sin(stepcounter * 2) * bobAmountY * -1)
//                + (transform.parent.localScale.y * heightRatio) - (transform.parent.localScale.y / 2), transform.localPosition.z);

//            lastPosition = transform.parent.position;

//            yRotation += Input.GetAxis("Mouse X") * lookSensitivity;
//            xRotation -= Input.GetAxis("Mouse Y") * lookSensitivity;

//            xRotation = Mathf.Clamp(xRotation, -70, 90);

//            currentXRotation = Mathf.SmoothDamp(currentXRotation, xRotation, ref xRotationV, lookSmoothness);
//            currentYRotation = Mathf.SmoothDamp(currentYRotation, yRotation, ref yRotationV, lookSmoothness);

//            transform.rotation = Quaternion.Euler(xRotation, yRotation, 0);
//            //if(Dialoguer.GetGlobalBoolean(13) == true)
//            //{
//            //    cameraMan.PlayOneShot(synthss, 0.25f);
//            //}
            
//        }
//        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("blackbeach"))
//        {
//            if (transform.parent.GetComponent<PlayerControllerTheFall>().grounded)
//            {
//                stepcounter += Vector3.Distance(lastPosition, transform.parent.position) * bobspeed;
//            }

//            transform.localPosition = new Vector3(Mathf.Sin(stepcounter) * bobAmountX, (Mathf.Sin(stepcounter * 2) * bobAmountY * -1)
//                + (transform.parent.localScale.y * heightRatio) - (transform.parent.localScale.y / 2), transform.localPosition.z);

//            lastPosition = transform.parent.position;

//            yRotation += Input.GetAxis("Mouse X") * lookSensitivity;
//            xRotation -= Input.GetAxis("Mouse Y") * lookSensitivity;

//            xRotation = Mathf.Clamp(xRotation, -70, 90);

//            currentXRotation = Mathf.SmoothDamp(currentXRotation, xRotation, ref xRotationV, lookSmoothness);
//            currentYRotation = Mathf.SmoothDamp(currentYRotation, yRotation, ref yRotationV, lookSmoothness);

//            transform.rotation = Quaternion.Euler(xRotation, yRotation, 0);
//        }
//        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("TheFall"))
//        {
//            //bool isItTime = GetComponent<PlayerControllerTheFall>().cameraTime;
//            //if (isItTime == false)
            
//            transform.position = transform.parent.position;
//            transform.rotation = transform.parent.rotation;
//            cameraMan.playOnAwake = true;
           
//            //if (isItTime == true)
//            //{
//            //    transform.position -= new Vector3(0, 0, -1);
//            //}

//        }



//    }
//}
