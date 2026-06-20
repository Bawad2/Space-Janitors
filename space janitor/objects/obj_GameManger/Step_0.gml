//made it so the pause menu doesnt apper on the main menu screen
if room == rm_MainScreen { paused = false;};

if paused 
{ 
	layer_set_visible( "PauseMenu" , true )

} 
if !paused { instance_activate_all(); layer_set_visible("PauseMenu", false );  }
