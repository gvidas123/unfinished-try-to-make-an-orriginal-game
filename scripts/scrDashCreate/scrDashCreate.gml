// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDashCreate(dashStrength, dashLength){
	var activated = false
	var xDashOffset = 0
	var yDashOffset = 0
	var mouseAngle = arctan2(mouse_y-y, mouse_x-x) * (180 / pi)
	if (keyboard_check(global.keyUp) || keyboard_check(global.keyDown) || keyboard_check(global.keyRight) || keyboard_check(global.keyLeft)) {
		activated = true
	}
	if (keyboard_check(global.keyUp)) {
	
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
		
		yDashOffset = 0;
		xDashOffset = dashStrength*1.42;
	}
	else if (keyboard_check(global.keyLeft)) {
	
		yDashOffset = 0;
		xDashOffset = -dashStrength*1.42;
	}
	
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