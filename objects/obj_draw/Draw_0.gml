// Счётчик монет
draw_set_font(fnt_ps2p);
draw_set_color(c_white);
draw_text(obj_ui_coin.x + 60, obj_ui_coin.y + 6, "6");

// Счётчик очков
draw_text(obj_ui_arrow.x + 48, obj_ui_arrow.y + 4, "00079");

//Прогресс линия
draw_rectangle(obj_bar.x + 12, obj_bar.y + 8, obj_bar.x + 244, obj_bar.y + 32, false);