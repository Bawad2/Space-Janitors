//get inputs
getControls()

//X movements
#region
//Direction
moveDir = rightKey - leftKey;

//Get xspd
xspd = moveDir * moveSpd;
//X collison
var _subPixle = 0.5;
if place_meeting( x+xspd, y, obj_Wall ) 
{
	//scoot up to wall
	var _pixleCheck = _subPixle*sign(xspd);
	
	while !place_meeting( x + _pixleCheck, y, obj_Wall) { x += _pixleCheck;};
	
	//real collison
	xspd = 0; 
}
#endregion
//Y movement
#region
  //Gravity
	 yspd += grv;
  //stop grvity if on walkable walls
	if place_meeting( x, y, obj_walkableWall ) { yspd = 0; }
  //apply termVel 
  if yspd > termVel { yspd = termVel;};
  //Jump
	if jkeybufferd and place_meeting(x, y+1, obj_Wall) { yspd = jspd; jkeybufferd = 0; jkeybuffertimer = 0; };
	
	if place_meeting( x, y + yspd, obj_Wall ) 
	{
		//scoot up to wall
		var _pixleCheck = _subPixle*sign(yspd);
	
		while !place_meeting( x , y + _pixleCheck, obj_Wall) { y += _pixleCheck;};
	
		//real collison
		yspd = 0; 
	}
#endregion
//Move the character
x += xspd;
y += yspd;

//Animate
if sign(xspd) == 1 { image_xscale = 1};
if sign(xspd) == -1 { image_xscale = -1};













