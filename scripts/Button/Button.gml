function AttackButton(){
	global.targeting = true;
	for (var i = 0; i < ds_list_size(global.units); i++){
		var _inst = global.units[| i]; // Get id of the instance and store in local var
		if (_inst != global.selectedUnit){ // Check if instanced id is not the selected unit
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
	global.targeting = false;
	ds_list_clear(global.targets); // Clear all targets
	with (cManager){
		event_user(1); // Enable BaseUI
		if (layer_get_visible(targetUI)) // If TargetUI is visible
			event_user(2);
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
	//TODO: Fill in
}

function SkillButton(){ // Use button player chooses
	//TODO: Fill in
}