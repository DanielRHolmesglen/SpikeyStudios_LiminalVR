using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;

public class ControllerMoniter : MonoBehaviour
{
    public enum side { left, right};
    public side currentSide;

    private void Update()
    {
        IVRInputDevice Input;
        if (currentSide == side.right)
        {
            Input = VRDevice.Device.PrimaryInputDevice;
            if (Input.GetButtonDown(VRButton.Trigger)&& InputMonitor.isitheld == InputMonitor.beingHeld.no)
             {
                InputMonitor.currenthand = InputMonitor.handPr.right;
             }
        }
        else
        {
            Input = VRDevice.Device.SecondaryInputDevice;
            if (Input.GetButtonDown(VRButton.Trigger)&& InputMonitor.isitheld == InputMonitor.beingHeld.no)
            {
                InputMonitor.currenthand = InputMonitor.handPr.left;
            }
        }

        
    }
}