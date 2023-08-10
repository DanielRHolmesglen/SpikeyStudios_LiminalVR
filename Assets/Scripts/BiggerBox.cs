using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class BiggerBox : MonoBehaviour, IPointerClickHandler,
    IPointerEnterHandler, IPointerExitHandler, IPointerUpHandler, IPointerDownHandler
{
    public UnityEvent OnInteraction;

    void Start()
    {

    }

    public void OnPointerClick(PointerEventData eventData)
    {
        OnInteraction.Invoke();
        transform.Rotate(0,30,0);
    }
    public void OnPointerEnter(PointerEventData eventData)
    {
        transform.localScale *= 1.2f;
    }
    public void OnPointerExit(PointerEventData eventData)
    {
        transform.localScale *= 1;
    }
    public void OnPointerUp(PointerEventData eventData)
    {
        transform.localScale *= 1;
    }
    public void OnPointerDown(PointerEventData eventData)
    {
        transform.localScale *= 0.5f;
    }
}
