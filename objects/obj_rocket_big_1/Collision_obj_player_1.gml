instance_create_depth(x + sprite_width / 2, y + sprite_height / 2, 2, obj_explosion_big);
audio_play_sound(snd_explosion, 10, false);
instance_destroy();
