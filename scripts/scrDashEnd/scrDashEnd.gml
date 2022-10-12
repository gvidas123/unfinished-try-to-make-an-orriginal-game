// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDashEnd(functionData){
	xDashOffset = functionData[|0]
	yDashOffset = functionData[|1]
	vspeed += yDashOffset;
	hspeed += xDashOffset;
}