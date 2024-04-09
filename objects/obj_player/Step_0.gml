if (variable_global_exists("round_start")) {
	if (!global.round_start) {
		if (timer_dir > 0) {
			timer_dir--;
		} else {
			vspeed = -vspeed;
			timer_dir = game_get_speed(gamespeed_fps) / 2;
			show_debug_message(vspeed);
		}	
	}
}

if ( keyboard_check(ord("Z")) ) {
	if (!global.round_start) {
		global.round_start = true;
	}
	vspeed = -2;
}

if ( keyboard_check(ord("X")) ) {
	if (!global.round_start) {
		global.round_start = true;
	}
	vspeed = 2;
}

if ( keyboard_check_pressed(ord("M")) ) {
	if (!global.round_start) {
		global.round_start = true;
	}
	instance_create_depth(bull_create_x, y + bull_create_y, 1, obj_bull);
}