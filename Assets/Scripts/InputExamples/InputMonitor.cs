using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputMonitor : MonoBehaviour
{
    public enum handPr { left, right };
    public static handPr currenthand;
    public enum beingHeld { yes, no };
    public static beingHeld isitheld;

    private void Start()
    {
        isitheld = beingHeld.no;
    }
}
