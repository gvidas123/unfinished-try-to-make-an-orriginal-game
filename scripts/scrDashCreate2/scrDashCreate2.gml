// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDashCreate2(dashStrength, dashLength){
	var activated = true
	var xDashOffset = 0
	var yDashOffset = 0
	//var mouseAngle = arctan2(mouse_y-y, mouse_x-x)
	
	yDashOffset = -(sin(mouseAngle))*dashStrength;
	xDashOffset = (cos(mouseAngle))*dashStrength;
	
	
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