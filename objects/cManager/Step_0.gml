switch(combatPhase){
	case  phase.init:
		layer_set_visible(targetUI, false); //Set layer invisible
		instance_deactivate_layer(targetUI); // Disable instance layer interaction
		layer_set_visible(baseUI, false); // Set layer invisible, keep interaction possible
		
		layer_set_visible(skillsUI, false); //Set layer invisible
		instance_deactivate_layer(skillsUI); // Disable instance layer interaction
	
		for(var i = 0; i < instance_number(cSpawn); i++ ){
			var spawner = instance_find(cSpawn, i);
			//var unit = instance_create_depth(spawner.x,spawner.y,0,oPlayer);
			//ds_list_add(global.units,unit);
			
			// If unit spawns on left side of room, set as ally
			// If unit spawns on right side of room, set as enemy
			if (spawner.x < room_width/2){
				var unit = instance_create_depth(spawner.x, spawner.y, 0, oPlayer);
				unit.team = 0; // Create an ally
			} else {
				var unit = instance_create_depth(spawner.x, spawner.y, 0, oPlayer);
				unit.team = 1; // Create an enemy
			}
			//ds_list_add(global.units, unit);
		}
		//show_message("Enemies Appeared!"); //Broadcast Message
		combatPhase = phase.startTurn;
	break;
	
	case  phase.startTurn:
		// Loop through scenes to check for child objects of parent unit
		for (var i = 0; i < instance_number(pUnit); i++){
			var _inst = instance_find(pUnit, i);
			ds_list_add(global.units, _inst); // Reset list
		}		
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
		if (global.selectedUnit.team > 0 && !aiDone){
			AIChoose();
		}
		
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
		allies = 0;
		enemies = 0;
		
		if (!global.processUnitDeath){ //fixes
			global.selectedUnit = noone;
			//processFinished = false;			
			global.targeting = false; // May be redundant
			for (var i = 0; i < ds_list_size(global.units); i++){
				with (global.units[|i]){
					drawTarget = false; 
				}
			}
			processFinished = true; // force processFinished = true
			if (processFinished) //fixes
				combatPhase = phase.checkFinish;
		}

	break;
	
	case  phase.checkFinish:
		processFinished = false;
		
		for (var i = 0; i < ds_list_size(global.units); i++){
			var _unit = global.units[| i];
			if (_unit.team == 0){ // If unit team is 0
				allies++;
			}
			else enemies++;
		}
		
		if (allies<0){
			combatPhase = phase.lose;
		}
		else if (enemies <= 0){
			combatPhase = phase.win;
		}
		else {
			combatPhase = phase.endTurn;
		}
		//if(keyboard_check_released(vk_space))
			//combatPhase = phase.endTurn;
		/*if(keyboard_check_released(vk_enter))
			combatPhase = phase.win;
		if(keyboard_check_released(vk_control))
			combatPhase = phase.lose;*/
	break;
	
	case  phase.endTurn:
		selectedFinished = false;
		//processFinished = false;
		//global.selectedTargets = noone;
		
		ds_list_clear(global.targets); // Clear targets list
		
		global.skillTargeting = false;
		ds_list_clear(global.selectedTargets); // Clear selectedTargets list
		
		ds_list_clear(global.units); // Clear list
		aiDone = false; // Set back to false after enemy takes turn
		
		combatPhase = phase.startTurn;
	break;
	
	case  phase.win:
		// Add whatever else here
		show_message("Hooray! You Won!");
		room_goto_previous();
	break;
	
	case  phase.lose:
		// Add gameover
		show_message("Oh no! You Lost!")
		room_goto(rmGameOver);
	break;
}