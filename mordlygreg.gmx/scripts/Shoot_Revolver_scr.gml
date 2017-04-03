//show_debug_message(cylinderPosition);

if (cylinder[cylinderPosition] != 0)
{
    bulletInst = instance_create(x, y, cylinder[cylinderPosition]);
    if (facing == 0) { bulletInst.y -= 8; bulletInst.x += 32; }
    else if (facing == 2) { bulletInst.y -= 8; bulletInst.x -= 32; }
    else if (facing == 1) { bulletInst.y -= 32; }
    else if (facing == 3) { bulletInst.y += 32; }
    
    //set bullet variance based off of missing stamina
    var variance = ((staminaMax - stamina) / 5) * random_range(-1, 1);
    
    //set reference to the object that spawns the projectile
    bulletInst.spawner = id;
    //initialize the projectiles speed and direction
    bulletInst.speed = 10;
    bulletInst.image_angle = id.facing * 90 + variance;
    bulletInst.direction = id.facing * 90 + variance;
    
    //clear the current chamber
    cylinder[cylinderPosition] = 0;
    
    //play sound
    audio_play_sound(Shot01_Gun_snd, 50, false);
    
    //knockback after shooting
    script_execute(SetDamageVars_scr(bulletInst, (staminaMax - stamina) / 6.5, staminaMax - stamina));
    
    /*
    Dir = point_direction(bulletInst.x + lengthdir_x(bulletInst.speed, bulletInst.direction), bulletInst.y + lengthdir_y(bulletInst.speed, bulletInst.direction), x, y);
    spd = (staminaMax - stamina) / 6.5;
    timeStamp[1] = current_time + (staminaMax - stamina);
    */
    
    stamina -= 30;
}
else { audio_play_sound(Empty_Gun_snd, 50, false); }