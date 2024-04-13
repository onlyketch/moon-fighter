
//rocket attack activate
if (global.round_start) {
	timer_rocket--;
	if (timer_rocket < 1) {
		var _ypos = irandom_range(128, 448); 
		instance_create_depth(room_width + 128, _ypos, 1, obj_rocket_big);
		timer_rocket = game_get_speed(gamespeed_fps) * 2;
	}
	
}