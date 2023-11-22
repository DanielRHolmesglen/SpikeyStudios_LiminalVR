using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;
using UnityEngine.EventSystems;
public class VR_HandController : MonoBehaviour
{
    LineRenderer line;
 
    Ray ray;
    RaycastHit hit;
    Grabbing selectedGrabScript;
    public enum Hands { left, right}
    public Hands hand;

    private void Start()
    {
        line = gameObject.GetComponent<LineRenderer>();
        //eS = gameObject.GetComponent<EventSystem>();
    }
    private void OnDisable()
    {
        selectedGrabScript.OnPointerUp();
        selectedGrabScript = null;
    }
    private void OnEnable()
    {
        selectedGrabScript = null;
    }
    // Update is called once per frame
    void Update()
    {
        IVRInputDevice VRInput = hand == Hands.left ? VRDevice.Device.SecondaryInputDevice : VRDevice.Device.PrimaryInputDevice;
        ray.origin = transform.position;
        ray.direction = transform.forward;
        if(Physics.Raycast(ray, out hit, 2))
        {
            if(selectedGrabScript == null)
            {
                line.enabled = true;
                line.SetPosition(0, transform.position);
                line.SetPosition(1, Vector3.Lerp(transform.position, hit.point, 0.1f));
                line.SetPosition(2, Vector3.Lerp(transform.position, hit.point, 0.8f));
                line.SetPosition(3, hit.point);
            }
            else
            {
                line.enabled = false;
            }

            Grabbing grabScript = hit.transform.GetComponent<Grabbing>();
            if(grabScript != null)
            {
                
                if (VRInput.GetButtonDown(VRButton.Trigger)|| Input.GetMouseButtonDown(0))
                {
                    InputMonitor.currenthand = (InputMonitor.handPr)(int)hand;
                    grabScript.OnPointerDown();
                    selectedGrabScript = grabScript;
                    
                }
                
            }

        }
        else
        {
            if (selectedGrabScript == null)
            {
                Vector3 point = transform.position + transform.forward * 2f;
                line.enabled = true;
                line.SetPosition(0, transform.position);
                line.SetPosition(1, Vector3.Lerp(transform.position, point, 0.01f));
                line.SetPosition(2, Vector3.Lerp(transform.position, point, 0.8f));
                line.SetPosition(3, point);
            }
            else
            {
                line.enabled = false;
            }
        }
        if (VRInput.GetButtonUp(VRButton.Trigger) && selectedGrabScript != null || Input.GetMouseButtonUp(0) && selectedGrabScript != null)
        {
            selectedGrabScript.OnPointerUp();
            selectedGrabScript = null;

        }
    }
}
