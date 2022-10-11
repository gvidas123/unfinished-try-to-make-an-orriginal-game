/// @description Insert description here
// You can write your code in this editor



//Speed decreasing over time
{
	if (abs(hspeed) >= 10) {
		hspeed /= 1.01;
	}
	if (abs(hspeed) >= 50) {
		hspeed /= 1.5;
	}
	/*
	else if (hspeed <= -10) {
		hspeed += 1;
	}*/
	vspeed += global.grav
	if (jumpCooldown > 0) {
		jumpCooldown -= 0.05
	}
}

if (ability1Cooldown > 0) {
	ability1Cooldown--;
}




if (keyboard_check(global.keySkill_1) && ability1Cooldown == 0) {
	switch (abilityName1) {
		case "dash":
			ability1Cooldown = 30
			canAirActivate = false;
			ability1StepLength = 5;
			functionData = scrDashCreate(dashStrength, dashLength)
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



