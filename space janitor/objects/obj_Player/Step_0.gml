rightKey = keyboard_check(vk_right) || keyboard_check(ord("D"));
leftKey = keyboard_check(vk_left) || keyboard_check(ord("A"));
upKey = keyboard_check(vk_up) || keyboard_check(ord("W"));
JumpKey = keyboard_check_pressed(vk_space);

//movement

if !place_meeting( x + move, y, obj_wall)  { move = rightKey - leftKey; };
x += move;

//animate
//flips the charcter
if sign(move) == -1 { image_xscale = -1;}
if sign(move) ==  1 { image_xscale =  1;}


//JUMPING
if JumpKey and place_meeting( x, y + 5, obj_wall ) { y -= jumpPwr };

//gravity
if !place_meeting(x, y + grv + 1, obj_wall) { y += grv; }