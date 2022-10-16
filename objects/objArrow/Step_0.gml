vspeed += global.grav
if (place_meeting(x + hspeed, y, objTrialBlock)) { //place meeting may be expensive, maybe try collision point or collision rectangle
	hspeed *= -1
	hspeed /= 1.5
}
if (place_meeting(x, y + vspeed, objTrialBlock)) { //place meeting may be expensive, maybe try collision point or collision rectangle
	vspeed *= -1
	vspeed /= 1.5
}
lifetime++
if (lifetime > lifeMax) {
	instance_destroy()
}







