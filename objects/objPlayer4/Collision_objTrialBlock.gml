/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor




if (!place_free(x+hspeed,y)) {
    if(hspeed <= 0) {
		move_contact_solid(180,abs(hspeed));
		collisionDirection = "left"
	}
    if(hspeed > 0) {
		move_contact_solid(0,abs(hspeed));
		collisionDirection = "right"
	}
    hspeed = 0;
	wallCoyote = 8
	canWallJump = true
	if (abilityName1 == "dash") {
		ability1Data[|1] = true
	}
	if (abilityName2 == "dash") {
		canAbility2Activate = true
	}
	
}

if (!place_free(x,y+vspeed))
{
    if(vspeed <= 0) {
		move_contact_solid(90,abs(vspeed))
		collisionDirection = "up"
	}
    if(vspeed > 0) {
		move_contact_solid(270,abs(vspeed))
		collisionDirection = "down"
		coyote = 8
		canJump = true
		if (abilityName1 == "dash") {
			ability1Data[|1] = true
		}
		if (abilityName2 == "dash") {
			canAbility2Activate = true
		}
	}
    vspeed = 0
}


if (!place_free(x+hspeed,y+vspeed)) {hspeed = 0;}