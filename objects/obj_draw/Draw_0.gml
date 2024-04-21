if (room == rm_game) {
// Счётчик монет
draw_set_font(fnt_ps2p);
draw_set_color(c_white);
draw_text(obj_ui_coin.x + 60, obj_ui_coin.y + 6, global.coin);

// Счётчик очков
var _drawscore;

if (global.score < 100 && global.score > 9) {
	_drawscore = "000" + string(global.score);	
} else if (global.score > 99 && global.score < 1000) {
	_drawscore = "00" + string(global.score);
} else if (global.score > 999 && global.score < 10000) {
	_drawscore = "0" + string(global.score);
} else if (global.score > 9999) {
	_drawscore = string(global.score);
} else if (global.score < 10) {	
	_drawscore = "0000" + string(global.score);	
}

draw_text(obj_ui_arrow.x + 48, obj_ui_arrow.y + 4, _drawscore);

//Прогресс линия
if (bar_width > 10) {
draw_rectangle(obj_bar.x + 12, obj_bar.y + 8, obj_bar.x + bar_width, obj_bar.y + 32, false);
	}
}

if (room == rm_game_over) {
	draw_text(room_width/2 - string_width("Game Over")/2, room_height/2, "Game Over");
}