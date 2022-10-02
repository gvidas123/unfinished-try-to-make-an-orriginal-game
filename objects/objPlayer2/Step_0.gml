/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_right)) {
	//hspeed = 5
	if (hspeed <= 10) {
		hspeed += 1
	}
}
else if (keyboard_check(vk_left)) {
	//hspeed = -5
	if (hspeed >= -10) {
		hspeed -= 1
	}
}
else {
	hspeed /= 1.2
}

//hspeed += momentum
vspeed += global.grav
if (jumpCooldown > 0) {
	jumpCooldown -= 0.05
}




