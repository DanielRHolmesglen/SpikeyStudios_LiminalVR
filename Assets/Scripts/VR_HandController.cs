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
    Grabbing grabScript;
    public enum Hands { left, right}
    public Hands hand;

    private void Start()
    {
        line = gameObject.GetComponent<LineRenderer>();
        //eS = gameObject.GetComponent<EventSystem>();
    }
    // Update is called once per frame
    void Update()
    {
        IVRInputDevice VRInput = hand == Hands.left ? VRDevice.Device.SecondaryInputDevice : VRDevice.Device.PrimaryInputDevice;
        ray.origin = transform.position;
        ray.direction = transform.forward;
        if(Physics.Raycast(ray, out hit, 100))
        {
            line.SetPosition(0, transform.position);
            line.SetPosition(1, hit.point);
            grabScript = hit.transform.GetComponent<Grabbing>();
            if(grabScript != null)
            {
                
                if (VRInput.GetButtonDown(VRButton.Trigger)|| Input.GetMouseButtonDown(0))
                {
                    InputMonitor.currenthand = (InputMonitor.handPr)(int)hand;
                    grabScript.OnPointerDown();
                    
                }
                
            }

        }
        else
        {
            line.SetPosition(0, transform.position);
            line.SetPosition(1, transform.position + transform.forward * 100);
        }
        if (VRInput.GetButtonUp(VRButton.Trigger) || Input.GetMouseButtonUp(0))
        {
            grabScript.OnPointerUp();

        }
    }
}
