using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class Grabbing : MonoBehaviour//, IPointerDownHandler, IPointerUpHandler
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
    public float wait;

    public void Start()
    {
        rocksRigid = GetComponent<Rigidbody>();
        InputMonitor.isitheld = InputMonitor.beingHeld.no;
    }

    public void OnPointerDown()
    {
        Debug.Log("attempt to select rock");
        if(InputMonitor.isitheld==InputMonitor.beingHeld.no)
        {
            Debug.Log("Attempt to put in hand");
            rocksRigid.useGravity = false;
            rocksRigid.constraints = RigidbodyConstraints.None;
            OnInteraction.Invoke();
            rocksRigid.position = hand.position;
            rocksRigid.rotation = hand.rotation;
            isHeld = true;
            InputMonitor.isitheld = InputMonitor.beingHeld.yes;
        }
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
    }

    public void FixedUpdate()
    {
        if(isHeld==true)
        {
            rocksRigid.position = hand.position;
            rocksRigid.rotation = hand.rotation;
            StartCoroutine(Movments());
            direction = position1 - position2;
            speed = Vector3.Distance(position2, position1);
        }
    }

    public void OnPointerUp()
    {
        Debug.Log("attempt to drop");
        if(isHeld==true)
        {
            InputMonitor.isitheld = InputMonitor.beingHeld.no;
        }
        isHeld = false;
        StopCoroutine(Movments());
        Debug.Log(direction);
        Debug.Log(speed);
        
        rocksRigid.useGravity = true;
        rocksRigid.AddForce(AimAssist.instance.ReTarget(direction) * (throwing*speed),ForceMode.Impulse);
        OnThrow.Invoke();

    }

    IEnumerator Movments() //to determine speed
    {
        position1 = rocksRigid.position;
        yield return new WaitForSeconds(wait);
        position2 = rocksRigid.position;
        yield return null;
    }
}
