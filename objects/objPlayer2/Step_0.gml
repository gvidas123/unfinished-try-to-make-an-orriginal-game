/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("D"))) {
	//hspeed = 5
	if (hspeed <= 10) {
		hspeed += 1
	}
}
else if (keyboard_check(ord("A"))) {
	//hspeed = -5
	if (hspeed >= -10) {
		hspeed -= 1
	}
}
else {
	hspeed /= 1.1
}

//hspeed += momentum
vspeed += global.grav




