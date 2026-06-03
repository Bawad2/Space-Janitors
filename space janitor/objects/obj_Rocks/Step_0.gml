
if room == rm_RocketLaunchPad  { speed = 0; }

if place_meeting(x, y, obj_bullet) 
{  
	bullet = instance_place(x, y, obj_bullet);
	hp -= bullet.dmg;
	with(bullet) {  instance_destroy(); };
} 

if hp <= 0 
{
	instance_create_layer(x, y, "Front", obj_explosion);
	instance_destroy();
}