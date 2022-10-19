/// @description Insert description here
// You can write your code in this editor

mouseAngle = -arctan2(mouse_y-y, mouse_x-x)

if (place_meeting(x + xDashOffset, y + yDashOffset, objArrow)) { //place meeting may be expensive, maybe try collision point or collision rectangle
	var arrow = instance_nearest(x, y, objArrow)
	if (arrow.lifetime > 3) {
		var hitAngle = -arctan2(arrow.y-y, arrow.x-x)
		vspeed = (sin(hitAngle))*arrow.vspeed*1.5;
		hspeed = (cos(hitAngle))*arrow.hspeed*1.5;
		instance_destroy(arrow)
	}
}


//Speed limits
{
	if (vspeed > maxVSpeed) {
		vspeed = maxVSpeed
	}
	else if (vspeed < -maxVSpeed) {
		vspeed = -maxVSpeed
	}
	
	if (hspeed > maxHSpeed) {
		hspeed = maxHSpeed
	}
	else if (hspeed < -maxHSpeed) {
		hspeed = -maxHSpeed
	}
}

//Constant speed changes over time
{
	if (abs(hspeed) >= 10) {
		hspeed /= 1.01;
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
	if (ability2Cooldown > 0) {
		ability2Cooldown--
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

ability1Data = scrAbilityFrame(abilityName1, ability1Data, ability1Key)
ability2Data = scrAbilityFrame(abilityName2, ability2Data, ability2Key)


/*
//Ability 1
{
	//Start effect
	if (mouse_check_button_pressed(mb_left) && ability1Cooldown == 0 && canAbility1Activate == true) {
		switch (abilityName1) {
			case "dash":
				ability1Cooldown = 30
				canAbility1Activate = false;
				ability1StepLength = 5;
				functionData = scrDashCreate2(dashStrength, dashLength)
				break;
			case "bow":
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
			case "bow":
				ability1Cooldown = 30
				canAbility1Activate = false;
				ability1StepLength = 5;
				functionData = scrDashCreate2(dashStrength, dashLength)
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
			case "bow":
				ability1Cooldown = 30
				canAbility1Activate = false;
				ability1StepLength = 5;
				functionData = scrDashCreate2(dashStrength, dashLength)
				break;
		}	
	}
}*/
/*
//Ability 2
{
	//Start effect
	if (mouse_check_button_pressed(mb_right) && ability2Cooldown == 0 && canAbility2Activate == true) {
		show_debug_message("create")
		switch (abilityName2) {
			case "dash":
				ability2Cooldown = 30
				canAbility2Activate = false;
				ability2StepLength = 5;
				functionData = scrDashCreate2(dashStrength, dashLength)
				break;
			case "bow":
				ability2Cooldown = 30
				canAbility2Activate = false;
				ability2StepLength = 50;
				functionData = scrBowCreate()
				break;
		}		
	}

	//Over time effect
	if (ability2StepLength > 0) {
		switch (abilityName2) {
			case "dash":
				if (ability2StepLength == 1) {
					ability2EndEnable = true
				}
				ability2StepLength--;
				functionData = scrDashStep(functionData)
				break;
			case "bow":
				if (mouse_check_button(mb_right)) {
					if (ability2StepLength == 1) {
						ability2EndEnable = true
					}
					ability2StepLength--
					functionData = scrBowStep(functionData)
					break;
				}
				else {
					ability2StepLength = 0
					ability2EndEnable = true
				}
				
		}	
	}

	//End effect
	if (ability2EndEnable == true) {
		ability2EndEnable = false
		switch (abilityName2) {
			case "dash":
				scrDashEnd(functionData);
				break;
			case "bow":
				scrBowEnd(functionData)
				canAbility2Activate = true
				break;
		}	
	}
}*/








if (keyboard_check_pressed(global.keySkill_1)) {
	insObjHitArea = instance_create_depth(x, y, 0, objHitArea);
	alarm[0] = 2
}

if (keyboard_check_pressed(global.keyDoor)) {
	insObjHitDoorArea = instance_create_depth(x, y, 0, objHitDoor);
	alarm[1] = 2
}



