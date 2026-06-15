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
	
	case 3:
	
    with( obj_GameManger ) 
	{ 
		paused = false; 
	}
	
	break;
	
}