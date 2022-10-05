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
if (keyboard_check_pressed(vk_enter) && selected == 0) {
	room_goto(rTrialRoom2);
}
if (keyboard_check_pressed(vk_enter) && selected == 1) {
	room_goto(rOptions);
}



