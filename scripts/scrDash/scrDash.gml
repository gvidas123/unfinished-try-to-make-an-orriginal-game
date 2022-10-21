// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDash(functionData, dashStrength, dashLength){
	var state = functionData[|0]
	var abilityStepLength = functionData[|1]
	var xDashOffset = functionData[|2]
	var yDashOffset = functionData[|3]
	var activated = functionData[|4]
	var wallHit = functionData[|5]
	
	if (state == 1) {
		activated = true
		wallHit = false
		var mouseAngle = -arctan2(mouse_y-y, mouse_x-x)
		yDashOffset = -(sin(mouseAngle))*dashStrength;
		xDashOffset = (cos(mouseAngle))*dashStrength;
		abilityStepLength = 5
		state++
	}
	else if (state == 2) {
		if (abilityStepLength == 1) {
			state++
		}
		abilityStepLength--;
		if (activated == true) {
			if (vspeed > 0) {
				vspeed = 0;
			}
			y += yDashOffset;
			x += xDashOffset;
			if (place_meeting(x + xDashOffset, y + yDashOffset, objTrialBlock) && wallHit == false) { //place meeting may be expensive, maybe try collision point or collision rectangle
				xDashOffset = -xDashOffset*1.2
				yDashOffset = -yDashOffset*1.2
				wallHit = true
			}
		}
	}
	else if (state == 3) {
		vspeed += yDashOffset;
		hspeed += xDashOffset;
		state = 0
	}
	
	
	functionData = ds_list_create()
	ds_list_add(functionData, state)
	ds_list_add(functionData, abilityStepLength)
	ds_list_add(functionData, xDashOffset)
	ds_list_add(functionData, yDashOffset)
	ds_list_add(functionData, activated)
	ds_list_add(functionData, wallHit)
	return functionData
}