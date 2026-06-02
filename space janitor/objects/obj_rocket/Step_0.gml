//dynamic thrust
if mouse_wheel_up() and thrust <= 20 { thrust -= thrust_sensy; }
if mouse_wheel_down() and thrust >= -20 { thrust += thrust_sensy; }
//fly up
y += thrust;

//gravity
if !place_meeting(x, y + grv + 1, obj_wall) { y += grv; }