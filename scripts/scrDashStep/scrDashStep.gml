// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDashStep(functionData){
	
	if (functionData[|2] == true) {
		xDashOffset = functionData[|0]
		yDashOffset = functionData[|1]
		vspeed = 0;
		hspeed = 0;
		y += yDashOffset;
		x += xDashOffset;
	}
}