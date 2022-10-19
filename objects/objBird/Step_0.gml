/// @description Insert description here
// You can write your code in this editor
if collision_circle(x, y, 300, objPlayer4, false, true) {
	 direction = point_direction(x, y, objPlayer4.x, objPlayer4.y);
	 speed = global.birdSpeed;
	 image_angle = direction - 90;
}




