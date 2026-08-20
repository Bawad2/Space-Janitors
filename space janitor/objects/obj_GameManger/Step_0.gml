
//made it so the pause menu doesnt apper on the main menu screen
if room == rm_MainScreen { paused = false;};

if paused 
{ 
	layer_set_visible( "PauseMenu" , true )
	instance_deactivate_all(true);

} 
if !paused { instance_activate_all(); layer_set_visible("PauseMenu", false );  }

//cash tracker
//track earned money
if room == !rm_Space1
{
	global.OldMoney = global.money
}

if room == rm_Space1 
{
	global.MoneyThisLevel = global.money - global.OldMoney;
	
} else{ global.MoneyThisLevel = 0;  }


//




//BUG TESTING / TEMP CODE

if keyboard_check_pressed(vk_numpad0) { layer_set_visible("GameOverScreen", true)  }