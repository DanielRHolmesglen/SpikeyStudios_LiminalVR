using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Liminal.Core.Fader;
using Liminal.SDK.Core;

public class GameManager : MonoBehaviour
{
    //After a certain number of rocks are thrown, the game will end 

    //Variables needed 
    //Variable to count the number of rocks thrown
    public int rocksThrown = 0;
    public int maxRocksThrown;
    //variable for colliders for the rocks to hit
    public GameObject wallsToHit; 

    //Function for adding to count to rocksThrown after hitting colliders 
    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject == wallsToHit)
        {
            Destroy(gameObject);
            rocksThrown++;
        }
    }

    void Update()
    {
        //When the amount of rocks thrown is equal to maxrocksthrown experience ends 
        //if(rocksThrown == maxRocksThrown)
        //{
        //var fader = ScreenFader.Instance;
        //fader.FadeTo(Color fadeColor, float fadeDuration);
        //ExperienceApp.End();
        //}
    }
    
}
