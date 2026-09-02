
//made it so the pause menu doesnt apper on the main menu screen
if room == rm_MainScreen { paused = false;};

if paused 
{ 
	layer_set_visible( "PauseMenu" , true )
	global.pausemenu = true;

} 
if !paused  { layer_set_visible("PauseMenu", false ); global.pausemenu = false;  }

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


//pause everything else if any UI layer is on






//BUG TESTING / TEMP CODE

if keyboard_check_pressed(vk_numpad0) { layer_set_visible("GameOverScreen", true)  }