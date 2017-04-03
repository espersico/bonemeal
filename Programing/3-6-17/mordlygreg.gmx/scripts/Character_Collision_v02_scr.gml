//collisions for Character objects

//so hspeed and vspeed are updated after the step event no matter what
//this is what was causing the collisions to be so buggy
//will probably have to go through and redo everything in a collision update using my own variables

//Character collisions
//detect a collision with any character that is not this character
if (place_meeting(x + hspeed, y, Character_obj) == true && Character_obj != id)
{
    otherChar = instance_place(x + hspeed, y, Character_obj);

    hspeed = (hspeed + otherChar.hspeed) / 2;
    otherChar.hspeed = hspeed;
}


if (place_meeting(x, y + vspeed, Character_obj) == true && Character_obj != id)
{
    otherChar = instance_place(x, y + vspeed, Character_obj);

    vspeed = (vspeed + otherChar.vspeed) / 2;
    otherChar.vspeed = vspeed;
}


//wall collision
//detect wall in horizontal axis
if (place_meeting(x + hspeed, y, Wall_obj) || place_meeting(x, y + vspeed, Wall_obj))
{
    //stop horizontal movement
    hspeed = 0;

    //stop vertical movement
    vspeed = 0;
}

