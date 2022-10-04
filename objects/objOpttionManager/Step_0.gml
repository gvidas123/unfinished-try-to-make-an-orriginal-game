/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(global.keyUp)) {
	if (selected != 0) {
		selected--;
	}
}
if (keyboard_check_pressed(global.keyDown)) {
	if (selected != optionNumber - 1) {
		selected++;
	}
}
if (keyboard_check_pressed(vk_enter) && selected == 2) {
	room_goto(rMainMenu);
}
if (keyboard_check_pressed(global.keyLeft) && selected == 1) {
	if (global.zoom != global.maxZoom) {
		global.zoom++;
		surface_resize(application_surface,objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);
		window_set_size(objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);
	}
}
if (keyboard_check_pressed(global.keyRight) && selected == 1) {
	if (global.zoom != 1) {
		global.zoom--;
		surface_resize(application_surface,objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);
		window_set_size(objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);
	}
}