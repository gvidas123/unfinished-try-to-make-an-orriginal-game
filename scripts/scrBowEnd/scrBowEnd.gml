// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBowEnd(functionData){
	var arrow = instance_create_depth(x, y, 0, objArrow)
	arrow.image_angle = mouseAngle
	arrow.vspeed = -(sin(mouseAngle))*functionData[|0];
	arrow.hspeed = (cos(mouseAngle))*functionData[|0];
	
	
	maxHSpeed = infinity
	
}