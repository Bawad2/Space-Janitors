//Do what buttons do

switch(ButtonID) 
{
	case 0 :
	room_goto(rm_House);
	layer_set_visible("MainMenu", false )
	break;
	
	case 2:
	game_end();
	
	break;
	//Pause button
	
	case 3:
	
    with( obj_GameManger ) 
	{ 
		paused = false; 
	}
	
	//Quit button
	case 4:
	var myLayer = self.layer;
	
	layer_set_visible(myLayer, false);
	
	break;
	
	//Upgrade Button(Bullet speed)
	case 5:
	if global.money >= 10 
	{   
		global.money -= 10;
		if global.ReloadSpd >=3
		{
		global.ReloadSpd -= 3;
		}
	}
	break;
	//Upgrade Button( Bullet Dmg)
	case 6:
	if global.money >= 10 
	{   
		global.money -= 10;
		global.DMG += 3;
		
	}
	break;
	//Upgrade Button(Health)
	case 7:
	if global.money >= 10 
	{   
		global.money -= 10;
		global.RHealth += 5;
		
	}
	break;
	
	
	
}