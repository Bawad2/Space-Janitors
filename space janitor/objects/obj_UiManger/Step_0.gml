// Inherit the parent event
event_inherited();

//Fuel math

if room == rm_Space1
{
	if fuelSec == 0 {
	 fuelSec = ( global.Fueltime * 3600 )
	}
	if fuelSec != 1 { 	fuelSec --; }
fuelImageIndex = 7 - round(fuelSec/1000)
}


//turn of the GameOverScreen when the room changes
if room == rm_House { layer_set_visible("GameOverScreen", false);  }