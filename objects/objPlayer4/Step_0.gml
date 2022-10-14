/// @description Insert description here
// You can write your code in this editor

mouseAngle = -arctan2(mouse_y-y, mouse_x-x) * (180 / pi) + 90

//Constant speed changes over time
{
	if (abs(hspeed) >= 10) {
		hspeed /= 1.01;
	}
	if (abs(hspeed) >= 50) {
		hspeed /= 1.5;
	}
	vspeed += global.grav
	
}

//Cooldown reduction
{
	if (jumpCooldown > 0) {
		jumpCooldown--
	}
	if (ability1Cooldown > 0) {
		ability1Cooldown--
	}
	if (wallCoyote > 0) {
		wallCoyote--
	}
	else {
		canWallJump = false
	}
	if (coyote > 0) {
		coyote--
	}
	else {
		canJump = false
	}
}

//Basic jumps
{
	//Walljump
	if (keyboard_check(global.keyJump) && canWallJump == true && jumpCooldown == 0) {
		if (collisionDirection == "right") {
			hspeed = -10
		} else if (collisionDirection == "left") {
			hspeed = 10
		}
		if (vspeed > -18) {
			vspeed = -18
		}
		else {
			vspeed += -10
		}
		jumpCooldown = 15
		canWallJump = false
	}
	//Ground jump
	if (keyboard_check(global.keyJump) && canJump == true && jumpCooldown == 0) {
		vspeed = -18
		jumpCooldown = 15
		canJump = false
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





//Start effect
if (mouse_check_button_pressed(mb_left) && ability1Cooldown == 0 && canAbility1Activate == true) {
	switch (abilityName1) {
		case "dash":
			ability1Cooldown = 30
			canAbility1Activate = false;
			ability1StepLength = 5;
			functionData = scrDashCreate2(dashStrength, dashLength)
			break;
	}		
}

//Over time effect
if (ability1StepLength > 0) {
	switch (abilityName1) {
		case "dash":
			if (ability1StepLength == 1) {
				ability1EndEnable = true
			}
			ability1StepLength--;
			functionData = scrDashStep(functionData)
			break;
	}	
}

//End effect
if (ability1EndEnable == true) {
	ability1EndEnable = false
	switch (abilityName1) {
		case "dash":
			scrDashEnd(functionData);
			break;
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



