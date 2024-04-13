if (x < room_width - sprite_width) {
	
	instance_create_depth(x + sprite_width / 2, y + sprite_height / 2, 2, obj_explosion_big);	
	instance_destroy();
}	

