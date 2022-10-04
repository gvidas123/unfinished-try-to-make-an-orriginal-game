/// @description Insert description here
// You can write your code in this editor

show_debug_message(canAirActivate)


while (dashCooldown > 0) {
	dashCooldown--;
	y += yDashOffset;
	x += xDashOffset;
	return;
}

//Dash
{
	if (canAirActivate == true) {
		
		if (keyboard_check(ord("Z"))) {
			canAirActivate = false;
			if (keyboard_check(vk_up)) {
				vspeed = 0;
				hspeed = 0;
				yDashOffset = -dashStrength;
				dashCooldown = dashLength;
				if (keyboard_check(vk_left)) {
					xDashOffset = -dashStrength;
				}
				else if (keyboard_check(vk_right)) {
					xDashOffset = dashStrength;
				}
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






