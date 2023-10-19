using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class Grabbing_Test : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{
    public UnityEvent OnInteraction;

    public Transform hand;
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
    }

    public void OnPointerDown(PointerEventData eventData)
    {
        rocksRigid.useGravity = false;
        OnInteraction.Invoke();
        rocksRigid.position =hand.position;
        rocksRigid.rotation = hand.rotation;
        isHeld = true;
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

    public void OnPointerUp(PointerEventData eventData)
    {
        isHeld = false;
        Debug.Log(direction);
        Debug.Log(speed);
        rocksRigid.useGravity = true;
        rocksRigid.AddForce(direction * (throwing*speed),ForceMode.Impulse);
    }

    IEnumerator Movments()
    {
        position1 = rocksRigid.position;
        yield return new WaitForSeconds(wait);
        position2 = rocksRigid.position;
        yield return null;
    }

}
