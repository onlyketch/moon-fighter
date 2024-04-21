if (variable_global_exists("round_start")) {
	if (!global.round_start) {
		if (timer_dir > 0) {
			timer_dir--;
		} else {
			vspeed = -vspeed;
			timer_dir = game_get_speed(gamespeed_fps) / 2;
		}	
	}
}

if ( keyboard_check_pressed(ord("Z")) ) {
	if (!global.round_start) {
		global.round_start = true;
	}
	vspeed = -2;
}

if ( keyboard_check_pressed(ord("X")) ) {
	if (!global.round_start) {
		global.round_start = true;
	}
	vspeed = 2;
}

// Shooting Start //

if ( keyboard_check_pressed(ord("M")) ) {
	if (!global.round_start) {
		global.round_start = true;
	}
	if (can_shoot) {
		instance_create_depth(bull_create_x, y + bull_create_y, 1, obj_bull);
		audio_play_sound(snd_shot, 10, false);
		can_shoot = !can_shoot;
	}
}

if (!can_shoot) {
	
	timer_shoot--;
	
	if (timer_shoot < 1) {
		can_shoot = !can_shoot;
		timer_shoot = game_get_speed(gamespeed_fps) / 3;
	}
	
}

// Shooting End //

if (y < 1 or y > (room_height - sprite_height - 1)) {
	if (global.round_start) {
		vspeed = vspeed * -1;
	}
}

// loss //

if (global.health == 0) {
	instance_create_depth(x, y + sprite_height - 52, 1, obj_fall);
	instance_destroy();
}

