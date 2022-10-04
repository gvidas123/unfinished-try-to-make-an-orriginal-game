/// @description Insert description here
// You can write your code in this editor


if (dashCooldown > 0) {
	dashCooldown--;
}
while (dashLength > 1) {
	vspeed = 0;
	hspeed = 0;
	dashLength--;
	y += yDashOffset;
	x += xDashOffset;
	return;
}
if (dashLength == 1) {
	vspeed += yDashOffset/2;
	hspeed += xDashOffset/2;
	dashLength--;
}

//Dash
{
	if (canAirActivate == true) {
		
		if (keyboard_check(ord("Z"))) {
			canAirActivate = false;
			if (keyboard_check(global.keyUp)) {
				show_debug_message("up")
				vspeed = 0;
				hspeed = 0;
				xDashOffset = 0;
				yDashOffset = -dashStrength;
				dashCooldown = 30;
				dashLength = 5;
				if (keyboard_check(global.keyLeft)) {
					xDashOffset = -dashStrength;
				}
				else if (keyboard_check(global.keyRight)) {
					xDashOffset = dashStrength;
				}
				else {
					yDashOffset = -dashStrength*1.42;
				}
			}
			else if (keyboard_check(global.keyDown)) {
				show_debug_message("down")
				vspeed = 0;
				hspeed = 0;
				xDashOffset = 0;
				yDashOffset = dashStrength;
				dashCooldown = 30;
				dashLength = 5;
				if (keyboard_check(global.keyLeft)) {
					xDashOffset = -dashStrength;
				}
				else if (keyboard_check(global.keyRight)) {
					xDashOffset = dashStrength;
				}
				else {
					yDashOffset = dashStrength*1.42;
				}
			}
			else if (keyboard_check(global.keyRight)) {
				show_debug_message("right")
				vspeed = 0;
				hspeed = 0;
				yDashOffset = 0;
				xDashOffset = dashStrength*1.42;
				dashCooldown = 30;
				dashLength = 5;
			}
			else if (keyboard_check(global.keyLeft)) {
				show_debug_message("left")
				vspeed = 0;
				hspeed = 0;
				yDashOffset = 0;
				xDashOffset = -dashStrength*1.42;
				dashCooldown = 30;
				dashLength = 5;
			}
		}
	}
}

//hspeed += momentum
vspeed += global.grav
if (jumpCooldown > 0) {
	jumpCooldown -= 0.05
}

if (keyboard_check_pressed(global.keySkill_1)) {
	
	insObjHitArea = instance_create_depth(x, y, 0, objHitArea);
	alarm[0] = 2
}


if (keyboard_check(global.keyRight)) {
	//hspeed = 5
	if (hspeed <= 10) {
		hspeed += 1
	}
}
else if (keyboard_check(global.keyLeft)) {
	//hspeed = -5
	if (hspeed >= -10) {
		hspeed -= 1
	}
}
else {
	hspeed /= 1.2
}






