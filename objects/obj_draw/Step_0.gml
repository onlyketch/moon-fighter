if (damage) {
	if (damage_count > 0) {
		damage_count -= 1;
		bar_width -= 1;
		if (obj_cat.x > obj_bar.x + 12) obj_cat.x -= 1;
	} else {
		damage = false;
		damage_count = 30.5; 	
	}
}
