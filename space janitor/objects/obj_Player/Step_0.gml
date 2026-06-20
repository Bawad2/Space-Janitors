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
    //stop grvity if on walkable walls
	if place_meeting( x, y , obj_walkableWall ) { grv = 0 ; } else { grv = 0.6;}
	//moveUp and Down on walkable walls
	if place_meeting( x, y, obj_walkableWall)
	{
		YmoveDir = downKey - upKey
		yspd = YmoveDir*YmoveSpd;
	}
	
	
	 yspd += grv;
	 
  //apply termVel 
  if yspd > termVel { yspd = termVel;};
  //Jump
	if jkeybufferd and  place_meeting(x, y+1, obj_Wall) { yspd = jspd; jkeybufferd = 0; jkeybuffertimer = 0; };
	
	if place_meeting( x, y + yspd, obj_Wall ) 
	{
		//scoot up to wall
		var _pixleCheck = _subPixle*sign(yspd);
	
		while !place_meeting( x , y + _pixleCheck, obj_Wall) { y += _pixleCheck;};
	
		//real collison
		yspd = 0; 
	}
#endregion
//go to rocket launch room if your in contact with the obj_boarder

if place_meeting( x, y, obj_Boarder) and interactKey { room_goto(rm_RocketLaunch); }

//makes it so the player is transparent on the launch site
if room == rm_RocketLaunch { image_alpha = 0;}


//Move the character
x += xspd;
y += yspd;

//sleep on the bed

switch(on_bed)
{
	case 0:
	sprite_set_speed(spr_PlayerLayingDown, 10, fps)
	sprite_index = spr_Player;
	if place_meeting( x, y, obj_bed) and interactKey
	{
		on_bed = 1; 
	}
	break;
	
	case 1:
	sprite_index = spr_PlayerLayingDown;
	if image_index >= 6 { image_index = 6;};
	if place_meeting(x,y, obj_bed)
	{
	bed = instance_place( x, y, obj_bed);
	x = bed.x
	y = bed.y
	image_xscale = 2;
	image_yscale = 2;
	}
	if interactKey and image_index = 6 
	{ 
		sprite_set_speed(spr_PlayerLayingDown, -10, fps)	
	};
	if image_index == 0 { on_bed = 0;  image_xscale = SpriteSize;}
	break;
	
	
}


	
//Animate
if !on_bed
{
image_yscale = SpriteSize;
if sign(xspd) == 1 { image_xscale = SpriteSize;};
if sign(xspd) == -1 { image_xscale = -SpriteSize;};
if moveDir != 0 or YmoveSpd != 0 { sprite_index = WalkSprite; };
if moveDir == 0 and YmoveDir == 0 { sprite_index = Sprite; };
}













