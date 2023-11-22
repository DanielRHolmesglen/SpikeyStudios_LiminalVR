using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;

public class HandAnimationScript : MonoBehaviour
{
    private Animator anim;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponentInChildren<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        var primaryInput = VRDevice.Device.PrimaryInputDevice;
        var secondaryInput = VRDevice.Device.SecondaryInputDevice;

        if (primaryInput.GetButtonUp(VRButton.One))
        {
            //Trigger has been pressed and released
            if (!anim.GetBool("IsRightGrabbing"))
            {
                Debug.Log("Play right hand grab animation");
                anim.SetBool("IsRightGrabbing", true);
            }
            else
            {
                if (anim.GetBool("IsRightGrabbing"))
                {
                    Debug.Log("Revert back to hand idle");
                    anim.SetBool("IsRightGrabbing", false);
                }
            }
        }

        if (secondaryInput.GetButtonUp(VRButton.Two))
        {
            //Trigger has been pressed and released
            if (!anim.GetBool("IsLeftGrabbing"))
            {
                Debug.Log("Play right hand grab animation");
                anim.SetBool("ILeftGrabbing", true);
            }
            else
            {
                if (anim.GetBool("IsLeftGrabbing"))
                {
                    Debug.Log("Revert back to hand idle");
                    anim.SetBool("IsLeftGrabbing", false);
                }
            }
        }
    }
}
