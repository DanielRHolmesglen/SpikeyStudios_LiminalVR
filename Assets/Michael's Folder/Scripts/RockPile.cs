using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockPile : MonoBehaviour
{
    public int rockCount;

    /*testfor take function
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Space))
        {
            TakeRock();
        }
    } */

    public void TakeRock()
    {
        rockCount--;
    }
}
