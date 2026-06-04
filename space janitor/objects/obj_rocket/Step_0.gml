


//dynamic thrust
if ( mouse_wheel_up() or  keyboard_check_pressed(ord("W"))) and  -thrust <= maxSpd { thrust -= thrust_sensy; }
if ( mouse_wheel_down() or keyboard_check_pressed(ord("S"))) and -thrust >= -maxSpd { thrust += thrust_sensy; }
if place_meeting(x, y + grv + 1, obj_wall) and thrust > 0 { thrust = 0; }
shootkey = mouse_check_button(mb_left);
//tilt the rocket
if !place_meeting(x, y + grv + 1, obj_wall)
{
if keyboard_check(ord("D")) || keyboard_check(vk_right) { image_angle -= tilt_sensy};
if keyboard_check(ord("A")) || keyboard_check(vk_left)  { image_angle += tilt_sensy};
}

//crashing
if place_meeting( x, y, obj_wall ) { crashed = true }

if crashed 
{
	explosion = instance_create_layer( x, y, self.layer, obj_explosion);
	explosion.image_xscale = 2;
	explosion.image_yscale = 2;
	instance_destroy(); 
};


//fly up
motion_set(image_angle,-thrust)

//shoot
if shootkey and reloadtimer == 0
{	
	reloadtimer = reloadspd;
	bullet = instance_create_layer( x, y, self.layer  ,obj_bullet);
	bullet.image_angle = image_angle;
}
if reloadtimer > 0 { reloadtimer --;}

//gravity
if !place_meeting(x, y + grv + 1, obj_wall) and !array_contains(spaceRooms,room) { y += grv; }

move_wrap(true, true, 0)