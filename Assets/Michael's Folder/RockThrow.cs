using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockThrow : MonoBehaviour
{
    public GameObject rock;
    
    float launchSpeed
    

    // Start is called before the first frame update
    void Start()
    {
       RockThrow = 
    }

    // Update is called once per frame
    void Update()
    {
        //throw when button is released
        Input.GetButtonUp(One){
            Throw();
        }
    }

    public void Throw(GameObject rock)
    {
        //instantiate object with launchSpeed and direction of player
        Instantiate(rock); 
    } 

    public void 
}
