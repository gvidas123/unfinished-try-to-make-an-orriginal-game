function scrBow(functionData){
	var state = functionData[|0] //controls which state the code is in
	var abilityStepLength = functionData[|1] //controls how long the step event lasts
	var abilityKey = functionData[|2] //button for the arrow ability
	var arrowPower = functionData[|3] //current strength of the arrow, increases once per step state
	
	if (state == 1) { //Creation state - executes first, run code for what should happen in the first frame of activation
		state++
		abilityStepLength = 50
		
		maxHSpeed = 2
		arrowPower = 0
	}
	else if (state == 2) { //Step state - executes second, run code for set amount of frames
		if (abilityStepLength == 1) {
			state++
		}
		abilityStepLength--
		
		if (mouse_check_button(abilityKey)) {
			arrowPower++
		}
		else {
			state++
		}
	}
	else if (state == 3) { //End state - executes last, run code for the end of the ability
		state = 0 //Resets ability state back to not executed
		
		var arrow = instance_create_depth(x, y, 0, objArrow)
		var mouseAngle = -arctan2(mouse_y-y, mouse_x-x)
		arrow.image_angle = mouseAngle
		arrow.vspeed = -(sin(mouseAngle))*arrowPower;
		arrow.hspeed = (cos(mouseAngle))*arrowPower;
		maxHSpeed = infinity
	}
	
	functionData = ds_list_create() //puts all code back into a list to send it out of the function
	ds_list_add(functionData, state)
	ds_list_add(functionData, abilityStepLength)
	ds_list_add(functionData, abilityKey)
	ds_list_add(functionData, arrowPower)
	return functionData
}