/// @description Insert description here
// You can write your code in this editor

draw_set_font(fontMainMenu);
if (selected != 0 ) {
	draw_text_color(100,54,"New Game",c_white,c_white,c_white,c_white,1);
}
else {
	draw_text_color(100,54,"New Game",c_yellow,c_yellow,c_yellow,c_yellow,1);
}
if (selected != 1) {
	draw_text_color(100,108,"Options",c_white,c_white,c_white,c_white,1);
}
else {
	draw_text_color(100,108,"Options",c_yellow,c_yellow,c_yellow,c_yellow,1);
}
if (selected != 2) {
	draw_text_color(100,162,"Exit",c_white,c_white,c_white,c_white,1);
}
else {
	draw_text_color(100,162,"Exit",c_yellow,c_yellow,c_yellow,c_yellow,1);
}

