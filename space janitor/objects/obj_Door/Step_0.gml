getControls();

instance = instance_place( x, y, obj_Player )

if interactKey
{
 with(instance) 
 {
	 room_goto(other.rm);
	 x = other.gotoX;
	 y = other.gotoY;
 }
}