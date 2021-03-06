//REQUIRES:
//initialization_scr

//up command
    if (keyboard_check(ord('W')) == true || keyboard_check(vk_up) == true)
    {
        Input[UP] = true;
        InputID = UP;
    }
    else
    {
        Input[UP] = false;
        
    }


//down command
    if (keyboard_check(ord('S')) == true || keyboard_check(vk_down) == true)
    {
        Input[DOWN] = true;
        InputID = DOWN;
    }
    else
    {
        Input[DOWN] = false;
        
    }


//left command
    if (keyboard_check(ord('A')) == true || keyboard_check(vk_left) == true)
    {
        Input[LEFT] = true;
        InputID = LEFT;
    }
    else
    {
        Input[LEFT] = false;
        
    }


//right command
    if (keyboard_check(ord('D')) == true || keyboard_check(vk_right) == true)
    {
        Input[RIGHT] = true;
        InputID = RIGHT;
    }
    else
    {
        Input[RIGHT] = false;
        
    }

    
//interact command
    if (keyboard_check_pressed(ord('E')) == true)
    {
        Input[INTERACT] = true;
        InputID = INTERACT;
    }
    else
    {
        Input[INTERACT] = false;
        
    }
    
//reload command
    if (keyboard_check_pressed(ord('R')) == true)
    {
        Input[ATTACK4] = true;
        InputID = ATTACK4;
    }
    else
    {
        Input[ATTACK4] = false;
    }

//cycle cylinder command
    if (keyboard_check_pressed(ord('T')) == true)
    {
        Input[ATTACK5] = true;
        InputID = ATTACK5;
    }
    else
    {
        Input[ATTACK5] = false;
    }
    

//dodge command
    if (keyboard_check_pressed(vk_shift) == true)
    {
        Input[DODGE] = true;
        InputID = DODGE;
    }
    else
    {
        Input[DODGE] = false;
        
    }


//aim gun command
    if (mouse_check_button(mb_right) == true)
    {
        Input[ATTACK3] = true;
        InputID = ATTACK3;
    }
    else
    {
        Input[ATTACK3] = false;
        
    }


//fire gun command
    if (mouse_check_button_pressed(mb_left) == true)
    {
        Input[ATTACK2] = true;
        InputID = ATTACK2;
    }
    else
    {
        Input[ATTACK2] = false;
        
    }


//swing umbrella commmand
    if (keyboard_check_pressed(vk_space) == true)
    {
        Input[ATTACK1] = true;
        InputID = ATTACK1;
    }
    else
    {
        Input[ATTACK1] = false;
        
    }
    
//block
    if (keyboard_check(ord('F')) == true)
    {
        Input[BLOCK] = true;
        InputID = BLOCK;
    }
    else
    {
        Input[BLOCK] = false;
    }
    
//parry
    if (keyboard_check_pressed(ord('V')) == true)
    {
        Input[PARRY] = true;
        InputID = PARRY;
    }
    else
    {
        Input[PARRY] = false;
    }
