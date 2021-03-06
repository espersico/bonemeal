dmg = argument0;        //damage taken
force = argument1;      //how fast is the knockback
kbck = argument2;       //how long is the knockback

//only run this code if more than a second has passed since the last hit
if (current_time > timeStamp[0] && State != s_DODGE)
{
    healthPoints = healthPoints - dmg;
    //show_debug_message(healthPoints);
    
    //set a 1 second invulnerabiliy period
    timeStamp[0] = current_time + 1000;
    timeStamp[1] = current_time + kbck;
    
    State = s_DAMAGED;
    StateArray[0] = s_DAMAGED;
    Dir = point_direction(hurter.x, hurter.y, x, y);
    spd = force;
    audio_play_sound(Hit02_Umbrella_snd, 50, false);
    
    script_execute(Var_Collision_scr);
}
