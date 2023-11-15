using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class ToolTipText : MonoBehaviour
{
    public TMP_Text textComponent;
    public string textToShow;
    // Start is called before the first frame update
    void Start()
    {
        textComponent.text = textToShow;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
