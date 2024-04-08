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