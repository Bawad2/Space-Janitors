// Inherit the parent event
event_inherited();

//Fuel math

	
	if fuelSec == 0 {
	 fuelSec = ( global.Fueltime * 3600 )
	}
	if fuelSec != 1 { 	fuelSec --; }
fuelImageIndex = 7 - round(fuelSec/1000)

show_debug_message(fuelSec);
