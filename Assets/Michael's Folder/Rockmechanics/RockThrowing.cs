using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockThrowing : MonoBehaviour
{
    public GameObject rock;

    float launchSpeed;
    

    // Start is called before the first frame update
    void Start()
    {
       rock = GetComponent<GameObject>();
    }

    // Update is called once per frame
    void Update()
    {
        //throw when button is released
        if(Input.GetButtonUp("One"))
        {
            Throw(rock);
        }
    }

    public void Throw(GameObject rock) //lauch object by instantiating it with a given speed
    {
        //instantiate object with launchSpeed and direction of player
        Instantiate(rock); 
    } 

}
