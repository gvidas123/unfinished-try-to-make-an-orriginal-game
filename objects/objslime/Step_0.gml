/// @description Insert description here
// You can write your code in this editor
if (currentCooldown == 0) {
	if (currentCycleStatus == 0) {
		hspeed = 0;
		currentCycleStatus = maxcycle;
		currentCooldown = cooldown;
	}
	else if (walkingDirection == 1) {
		if (currentCycleStatus < maxcycle/2 ) {
			hspeed += global.slime_speed/cycle_length;
			currentCycleStatus--
		}
		else {
			hspeed -= global.slime_speed/cycle_length;
			currentCycleStatus--
		}
	}
	else if (walkingDirection == -1) {
		if (currentCycleStatus < maxcycle/2 ) {
			hspeed -= global.slime_speed/cycle_length;
			currentCycleStatus--
		}
		else {
			hspeed += global.slime_speed/cycle_length;
			currentCycleStatus--
		}
	}
}
else {currentCooldown--}
if (collision_point(x+objSlime.sprite_width/2+hspeed,y,objTrialBlock,false,false)) {
	walkingDirection = -walkingDirection
	hspeed = -hspeed;
}
if (collision_point(x-objSlime.sprite_width/2+hspeed,y,objTrialBlock,false,false)) {
	walkingDirection = -walkingDirection
	hspeed = -hspeed;
}
if (!collision_point(x-objSlime.sprite_width/8,y+objSlime.sprite_height/2,objTrialBlock,false,false)) {
	walkingDirection = -walkingDirection
	hspeed = -hspeed;
}
if (!collision_point(x+objSlime.sprite_width/8,y+objSlime.sprite_height/2,objTrialBlock,false,false)) {
	walkingDirection = -walkingDirection
	hspeed = -hspeed;
}
