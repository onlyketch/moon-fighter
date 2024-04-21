if (x < room_width - sprite_width) {
	instance_create_depth(x + sprite_width / 2, y + sprite_height / 2, 2, obj_explosion_big);
	instance_create_depth(x + sprite_width / 2, y + sprite_height / 2, 2, obj_coin);
	audio_play_sound(snd_explosion, 10, false);
	instance_destroy();
}	

