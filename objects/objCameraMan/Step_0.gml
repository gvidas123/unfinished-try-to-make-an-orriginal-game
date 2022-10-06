/// @description Insert description here
// You can write your code in this editor
if (object_exists(objPlayer2)) {
	x = objPlayer2.x -camera_get_view_width(view_camera[0]) /2;
	y = objPlayer2.y -camera_get_view_height(view_camera[0]) /2;
}
else {
	if (keyboard_check(vk_right)) {
		x += 10;
		camera_set_view_pos(view_camera[0],x,y);
	}
	if (keyboard_check(vk_left)) {
		x -= 10;
		camera_set_view_pos(view_camera[0],x,y);
	}
	if (keyboard_check(vk_up)) {
		y -= 10;
		camera_set_view_pos(view_camera[0],x,y);
	}
	if (keyboard_check(vk_down)) {
		y += 10;
		camera_set_view_pos(view_camera[0],x,y);
	}
	
}
camera_set_view_pos(view_camera[0],x,y);



