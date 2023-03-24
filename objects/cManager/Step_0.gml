switch(combatPhase){
	case  phase.init:
		layer_set_visible(targetUI, false); //Set layer invisible
		instance_deactivate_layer(targetUI); // Disable instance layer interaction
		layer_set_visible(baseUI, false); // Set layer invisible, keep interaction possible
		
		layer_set_visible(skillsUI, false); //Set layer invisible
		instance_deactivate_layer(skillsUI); // Disable instance layer interaction
	
		for(var i = 0; i < instance_number(cSpawn); i++ ){
			var spawner = instance_find(cSpawn, i);
			var unit = instance_create_depth(spawner.x,spawner.y,0,oPlayer);
			ds_list_add(global.units,unit);
		}
		combatPhase = phase.startTurn;
	break;
	
	case  phase.startTurn:
		BubbleSort(global.units);
		
		if( unitsFinished >= ds_list_size(global.units)){
			for (var i= 0 ; i < ds_list_size(global.units); i++){
				with(global.units[|i])
					turnFinished = false;
			}
			unitsFinished = 0;
		}
		
		for (var i= 0 ; i < ds_list_size(global.units); i++){
			var inst = global.units[|i];
			if(inst.turnFinished == false){
				
				with (inst){
					event_user(0);
				}
				
				inst.selected = true;
				inst.attackWillHit = false;
				global.selectedUnit = inst;
				break;
			}
		}
		
		if (!allowInput){ // Check if allowInput is false
			allowInput = true;
			event_user(1); // Even turns on/off base layer
		}
		
		combatPhase = phase.wait;
	break;
	
	case  phase.wait:
		if(selectedFinished == true){
			global.selectedUnit.selected = false;
			unitsFinished++;
			combatPhase = phase.process;
			
			event_user(0); // Flips allowInput between true and false
			layer_set_visible(targetUI, false); // Hide layer
			instance_deactivate_layer(targetUI); // Disable layer interaction
			layer_set_visible(baseUI, false); // Hide layer
			instance_deactivate_layer(baseUI); // Disable layer interaction
		}
	break;
	
	case  phase.process:
		if(processFinished){
			combatPhase = phase.checkFinish;
			
			global.targeting = false; // May be redundant
			for (var i = 0; i < ds_list_size(global.units); i++){
				with (global.units[|i]){
					drawTarget = false; 
				}
			}
		}

	break;
	
	case  phase.checkFinish:
		processFinished = false;
		//if(keyboard_check_released(vk_space))
			combatPhase = phase.endTurn;
		/*if(keyboard_check_released(vk_enter))
			combatPhase = phase.win;
		if(keyboard_check_released(vk_control))
			combatPhase = phase.lose;*/
	break;
	
	case  phase.endTurn:
		selectedFinished = false;
		//global.selectedTargets = noone;
		
		ds_list_clear(global.targets); // Clear targets list
		
		global.skillTargeting = false;
		ds_list_clear(global.selectedTargets); // Clear selectedTargets list
		
		combatPhase =phase.startTurn;
	break;
	
	case  phase.win:
		// What haoppens if we win
	break;
	
	case  phase.lose:
		//what happenes if we lose
	break;
}