// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDashCreate2(dashStrength, dashLength){
	var activated = true
	var xDashOffset = 0
	var yDashOffset = 0
	var mouseAngle = arctan2(mouse_y-y, mouse_x-x)
	
	yDashOffset = (sin(mouseAngle))*dashStrength;
	xDashOffset = (cos(mouseAngle))*dashStrength;
	/*
	if (keyboard_check(global.keyUp) || keyboard_check(global.keyDown) || keyboard_check(global.keyRight) || keyboard_check(global.keyLeft)) {
		activated = true
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
	}*/
	
	functionData = ds_list_create()
	ds_list_add(functionData, xDashOffset)
	ds_list_add(functionData, yDashOffset)
	ds_list_add(functionData, activated)
	ds_list_add(functionData, false)
	return functionData
	/*
	if (activated == true) {
		scrDash(xDashOffset, yDashOffset, dashLength)
	}*/
}