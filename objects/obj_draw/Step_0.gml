if (damage) {
	if (damage_count > 0) {
		damage_count -= 0.5;
		bar_width -= 0.5;
		if (obj_cat.x > obj_bar.x + 12) obj_cat.x -= 0.5;
	} else {
		damage = false;
		damage_count = 30.5; 	
	}
}
