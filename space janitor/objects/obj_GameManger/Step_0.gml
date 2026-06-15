if paused 
{ 
	layer_set_visible( "PauseMenu" , true )
	with(all)
	{
		instance_deactivate_all(true);	
	}
  	
} 
if !paused { instance_activate_all(); layer_set_visible("PauseMenu", false );  }