// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrAbilityFrame(abilityName, abilityData, abilityKey){
	var functionData = abilityData[|0]
	var canAbilityActivate = abilityData[|1]
	var abilityEndEnable = abilityData[|2]
	var abilityStepLength = abilityData[|3]
	var abilityCooldown = abilityData[|4]
	if (abilityCooldown > 0) {
		abilityCooldown--;
	}
	
	
	//Start effect
	if (mouse_check_button_pressed(abilityKey) && abilityCooldown == 0 && canAbilityActivate == true) {
		switch (abilityName) {
			case "dash":
				abilityCooldown = 30
				canAbilityActivate = false;
				abilityStepLength = 5;
				functionData = scrDashCreate2(20, 10)
				break;
			case "bow":
				show_debug_message("HOW")
				abilityCooldown = 30
				canAbilityActivate = false;
				abilityStepLength = 50;
				functionData = scrBowCreate()
				break;
			default:
				show_debug_message("Wrong ability name set")
				break;
		}		
	}

	//Over time effect
	if (abilityStepLength > 0) {
		switch (abilityName) {
			case "dash":
				if (abilityStepLength == 1) {
					abilityEndEnable = true
				}
				abilityStepLength--;
				functionData = scrDashStep(functionData)
				break;
			case "bow":
				if (mouse_check_button(abilityKey)) {
					if (abilityStepLength == 1) {
						abilityEndEnable = true
					}
					abilityStepLength--
					functionData = scrBowStep(functionData)
					break;
				}
				else {
					abilityStepLength = 0
					abilityEndEnable = true
				}
				
		}	
	}

	//End effect
	if (abilityEndEnable == true) {
		abilityEndEnable = false
		switch (abilityName) {
			case "dash":
				scrDashEnd(functionData);
				break;
			case "bow":
				scrBowEnd(functionData)
				canAbilityActivate = true
				break;
		}	
	}
	
	abilityData = ds_list_create()
	ds_list_add(abilityData, functionData)
	ds_list_add(abilityData, canAbilityActivate)
	ds_list_add(abilityData, abilityEndEnable)
	ds_list_add(abilityData, abilityStepLength)
	ds_list_add(abilityData, abilityCooldown)
	return abilityData
}