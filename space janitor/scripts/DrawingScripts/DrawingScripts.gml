function HoverHighlightSetUp( ){
	hilightInt = argument0
	hilightC   =  argument1
}

function HoverHighLightDraw(){
	
if position_meeting( mouse_x, mouse_y, id)
{	
	draw_self();
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, hilightC, hilightInt)
} else {draw_self();};
 
	
}