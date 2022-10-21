function scrTemplate(functionData){
	var state = functionData[|0] //controls which state the code is in
	var abilityStepLength = functionData[|1] //controls how long the step event lasts
	
	if (state == 1) { //Creation state - executes first, run code for what should happen in the first frame of activation
		state++
		abilityStepLength = 5
		
		//code
	}
	else if (state == 2) { //Step state - executes second, run code for set amount of frames
		if (abilityStepLength == 1) {
			state++
		}
		abilityStepLength--
		
		//code
	}
	else if (state == 3) { //End state - executes last, run code for the end of the ability
		state = 0 //Resets ability state back to not executed
		
		//code
	}
	
	functionData = ds_list_create() //puts all code back into a list to send it out of the function
	ds_list_add(functionData, state)
	ds_list_add(functionData, abilityStepLength)
	return functionData
}