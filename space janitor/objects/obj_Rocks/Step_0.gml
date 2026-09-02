//making it move
motion_set(image_angle,spd)

if place_meeting(x, y, obj_bullet) 
{  
	bullet = instance_place(x, y, obj_bullet);
	hp -= bullet.dmg;
	with(bullet) {  instance_destroy(); };
} 

if hp <= 0 
{
	instance_create_layer(x, y, self.layer, obj_explosion);
	global.money += reward;
	instance_destroy();
}

move_wrap(true,true , 100)

//create new rock

if instance_number(obj_Rocks) < 10 
{
 var new_rock = instance_create_layer( random(1060) , -10, self.layer ,obj_Rocks )

}