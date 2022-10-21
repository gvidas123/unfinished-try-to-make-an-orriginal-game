function scrAbilityFrame(abilityName, abilityData, abilityKey){
	var functionData = abilityData[|0] //data that travels inbetween function calls
	var canAbilityActivate = abilityData[|1] //special check for whether an ability can activate that's checked outside this function
	var abilityCooldown = abilityData[|2] //amount of steps before you can activate the ability
	
	if (abilityCooldown > 0) { //lowers the cooldown per step
		abilityCooldown--;
	}
	
	
	switch (abilityName) {
		case "dash":
			if (mouse_check_button_pressed(abilityKey) && abilityCooldown == 0 && canAbilityActivate == true) {
				functionData[|0] = 1
				abilityCooldown = 30
				canAbilityActivate = false
			}
			functionData = scrDash(functionData, 20, 10);
			break;
			
			
			
		case "bow":
			if (mouse_check_button_pressed(abilityKey) && abilityCooldown == 0 && canAbilityActivate == true) {
				functionData[|0] = 1
				functionData[|2] = abilityKey
				abilityCooldown = 30
				canAbilityActivate = false
			}
			functionData = scrBow(functionData)
			canAbilityActivate = true
			break;
			
			
			
		default: //template code to copy from
			if (mouse_check_button_pressed(abilityKey) && abilityCooldown == 0 && canAbilityActivate == true) {
				functionData[|0] = 1 //Sets state to 1 to start the create state
				abilityCooldown = 30 //Sets cooldown
				canAbilityActivate = false //Sets whether you can use the ability (is usually set back to true after it ends)
			}
			functionData = scrBowEnd(functionData)
			canAbilityActivate = true
			break;
	}	
	
	abilityData = ds_list_create()
	ds_list_add(abilityData, functionData)
	ds_list_add(abilityData, canAbilityActivate)
	ds_list_add(abilityData, abilityCooldown)
	return abilityData
}