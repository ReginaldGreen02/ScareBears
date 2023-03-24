function AttackButton(){
	global.targeting = true;
	for (var i = 0; i < ds_list_size(global.units); i++){
		var _inst = global.units[| i]; // Get id of the instance and store in local var
		if (_inst.team != global.selectedUnit.team){ // Check if instanced id is not the selected unit
			ds_list_add(global.targets, _inst); // Add to targets list
		}
	}
	with (cManager){
		event_user(0); // Disable input
		event_user(1); // Turn off BaseUI
		event_user(2); // Turn on TargetUI
		event_user(0); // Enable input
	}
		
}

function CancelButton(){
	global.selectedUnit.selectedSkill = -1;
	global.targeting = false;
	global.skillTargeting = false;
	ds_list_clear(global.targets); // Clear all targets
	with (cManager){
		event_user(1); // Enable BaseUI
		if (layer_get_visible(targetUI)) // If TargetUI is visible
			event_user(2);
			
		else if (layer_get_visible(skillsUI))
			event_user(3);
	} 
}

function DefendButton(){
	if (cManager.allowInput){ // Check to see if allowed input?
		with(global.selectedUnit){
			state = TODEFEND;
			layer_sequence_headpos(unitSequence, todefendStart); 
		}
		with (cManager){
			// event_user(0); // disable input
			event_user(1);
		}
	}
}

function SkillMenu(){ // Changes UI layer
	with (cManager){
		event_user(0); // Disable input
		event_user(1); // Disable BaseUI
		event_user(3); // Turn on SkillUI
		event_user(0); // Enable input
	}
}

function SkillButton(){ // Use button player chooses
	// Store cost of skill
	var _cost = global.selectedUnit.learnedSkill[@ ds_list_find_index(global.skillsButtons, id)].cost;
	// Check current SP of selectedUnit
	var _sp = global.selectedUnit.current[@ SKILLPOINTS];
	if (_sp >= _cost){
		global.skillTargeting = true;
		// Grab skill from buttons, set id to the selectedSkill
		global.selectedUnit.selectedSkill = global.selectedUnit.learnedSkill[@ ds_list_find_index(global.skillsButtons, id)];
		for (var i = 0; i < ds_list_size(global.units); i++){
			var _inst = global.units[| i];
			if (_inst.team != global.selectedUnit.team){
				// Temporary until we add teams
				ds_list_add(global.targets, _inst);
			}
		}
		with (cManager){
			event_user(0); // Disable input
			event_user(2); 
			event_user(3); 
			event_user(0); // Enable input
		}
	}else {
		show_message("Not enough skill points!");
	}
	
}