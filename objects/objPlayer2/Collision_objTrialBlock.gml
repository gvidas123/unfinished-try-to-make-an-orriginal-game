/// @description Insert description here
// You can write your code in this editor




if (dashCooldown == 0) {
	canAirActivate = true;
}

if (keyboard_check(global.keyJump) && jumpCooldown == 0) {
	vspeed = -18
	jumpCooldown = 1
}

if (!place_free(x+hspeed,y)) {
    if(hspeed <= 0){move_contact_solid(180,abs(hspeed));}
    if(hspeed > 0){move_contact_solid(0,abs(hspeed));}
    hspeed = 0;
}

if (!place_free(x,y+vspeed))
{
    if(vspeed <= 0) {
		move_contact_solid(90,abs(vspeed))
		show_debug_message(vspeed)
	}
    if(vspeed > 0) {
		move_contact_solid(270,abs(vspeed))
	}
    vspeed = 0;
}

if (!place_free(x+hspeed,y+vspeed)) {hspeed = 0;}









