using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using Liminal.SDK.VR;
using Liminal.SDK.VR.Input;
using System.Runtime.InteropServices;

public class Grabbing : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{
    public UnityEvent OnInteraction;
    public UnityEvent OnThrow;

    private Transform hand;
    public Transform handLeft;
    public Transform handRight;
    private bool isHeld=false;
    private Rigidbody rocksRigid;
    public float throwing;
    
    private Vector3 position1;
    private Vector3 position2;
    private Vector3 direction;
    
    private float speed;
    public float wait; //for speed calc

    public void Start()
    {
        rocksRigid = GetComponent<Rigidbody>();

    }



    public void Update()
    {
        if(InputMonitor.currenthand==InputMonitor.handPr.right)
        {
            hand = handRight;
        }
        else if(InputMonitor.currenthand == InputMonitor.handPr.left)
        {
            hand = handLeft;
        }

        //Michael's edit
        var primaryInput = VRDevice.Device.PrimaryInputDevice;

        if (primaryInput.GetButtonDown(VRButton.One))
        {
            Invoke("OnPointerDown",0);
        }
        if (primaryInput.GetButtonUp(VRButton.One))
        {
            Invoke("OnPointerUp", 0);
        }
    }

    public void FixedUpdate()
    {
        if(isHeld==true)
        {
            rocksRigid.position = hand.position;
            rocksRigid.rotation = hand.rotation;
            StartCoroutine(Movements());
            direction = position1 - position2;
            speed = Vector3.Distance(position2, position1);
        }
    }

    public void OnPointerDown(PointerEventData eventData)
    {
        Debug.Log("pointer Down");
        if (InputMonitor.isitheld == InputMonitor.beingHeld.no)
        {
            Debug.Log("Attempt to put in hand");
            rocksRigid.useGravity = false;
            OnInteraction.Invoke();
            rocksRigid.position = hand.position;
            rocksRigid.rotation = hand.rotation;
            isHeld = true;
            InputMonitor.isitheld = InputMonitor.beingHeld.yes;
        }
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        Debug.Log("attempt to drop");
        if(isHeld==true)
        {
            InputMonitor.isitheld = InputMonitor.beingHeld.no;
        }
        isHeld = false;
        Debug.Log(direction);
        Debug.Log(speed);
        rocksRigid.useGravity = true;
        rocksRigid.AddForce(direction * (throwing*speed),ForceMode.Impulse);
        OnThrow.Invoke();
    }

    IEnumerator Movements()
    {
        position1 = rocksRigid.position;
        yield return new WaitForSeconds(wait);
        position2 = rocksRigid.position;
        yield return null;
    }

}
