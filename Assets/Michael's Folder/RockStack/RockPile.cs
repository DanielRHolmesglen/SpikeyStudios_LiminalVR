using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockPile : MonoBehaviour
{
    public int rockCount;

    public void TakeRock()
    {
        rockCount--;
    }
}
