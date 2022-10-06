/// @description Insert description here
// You can write your code in this editor

//Speed decreasing over time
{
	if (hspeed >= 10) {
		hspeed -= 1;
	}
	else if (hspeed <= -10) {
		hspeed += 1;
	}
	vspeed += global.grav
	if (jumpCooldown > 0) {
		jumpCooldown -= 0.05
	}
}

//Dash
{
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
		vspeed += yDashOffset;
		hspeed += xDashOffset;
		dashLength--;
	}
	
	if (canAirActivate == true) {
		if (keyboard_check(global.keySkill_1)) {
			canAirActivate = false;
			if (keyboard_check(global.keyUp) || keyboard_check(global.keyDown) || keyboard_check(global.keyRight) || keyboard_check(global.keyLeft)) {
				vspeed = 0;
				hspeed = 0;
				dashCooldown = 15;
				dashLength = 5;
			}
			if (keyboard_check(global.keyUp)) {
				show_debug_message("up")
				xDashOffset = 0;
				yDashOffset = -dashStrength;
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
				xDashOffset = 0;
				yDashOffset = dashStrength;
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
				yDashOffset = 0;
				xDashOffset = dashStrength*1.42;
			}
			else if (keyboard_check(global.keyLeft)) {
				show_debug_message("left")
				yDashOffset = 0;
				xDashOffset = -dashStrength*1.42;
			}
		}
	}
}

//Horizontal inputs
{
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
}


if (keyboard_check_pressed(global.keySkill_1)) {
	insObjHitArea = instance_create_depth(x, y, 0, objHitArea);
	alarm[0] = 2
}
if (keyboard_check_pressed(global.keyDoor)) {
	insObjHitDoorArea = instance_create_depth(x, y, 0, objHitDoor);
	alarm[1] = 2
}



