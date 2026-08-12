//set up for drawing
draw_set_font(fnt_Ui)

//get the screen info
	


//DRAW THE TINT ON THE SCREEN
if paused {
draw_sprite_ext(spr_ScreenTIlt,image_index, 0, 0, 1000, 1000, image_angle, c_white, image_alpha);}

//draw amount of money
if room != rm_MainScreen
{
draw_sprite_ext(spr_coin, image_index, 31, 31, 1,1,image_angle, image_blend, image_alpha)
draw_text_transformed( 60, 3, ":" + string(global.money), 3, 3, 0)
}

//Show fuel meter only when on the rocket
if room == rm_Space1
{
	//draw the fuel sprite
	
	draw_sprite_ext(spr_FuelMeter, fuelImageIndex, 1120 , 20, 2,2,image_angle, image_blend, image_alpha)

}
