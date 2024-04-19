
//rocket attack activate
if (global.round_start) {
	timer_rocket--;
	if (timer_rocket < 1) {
		var _ypos = irandom_range(128, 448);
		var _rnd = irandom_range(1, 5);
		
		if (_rnd == 3) {
			type = obj_rocket_small;	
		} else {
			type = obj_rocket_big;
		}
		
		instance_create_depth(room_width + 128, _ypos, 1, type);
		timer_rocket = game_get_speed(gamespeed_fps) * 1.5;
	}
	
}