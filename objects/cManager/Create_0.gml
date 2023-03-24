randomize();

enum phase{
	init, 
	startTurn,
	wait,
	process,
	checkFinish,
	endTurn,
	win,
	lose
}

combatPhase = phase.init;
unitsFinished = 0;
selectedFinished = false;
processFinished = false;
allowInput = false; // Prevents spamming left mouse click

allies = 0; // # of allied units on the field
enemies = 0; // # of enemy units on the field
aiDone = false; // stops code from running before letting it proceed

global.selectedUnit = noone;
global.units = ds_list_create()
//global.selectedTargets = noone; // Single item
global.selectedTargets = ds_list_create(); // List of targets

global.targets = ds_list_create(); // potential targets
global.targeting = false;

// Turns on/off specific UI layers
baseUI = layer_get_id("BaseUI"); // Finds layer in room, stores id in variable
targetUI = layer_get_id("TargetUI"); // Finds layer in room, stores id in variable

global.skillsButtons = ds_list_create(); // All the skills available to player
global.skillTargeting = false;
skillSent = false; // Triggers when receives broadcast message
instance_create_depth(0,0,0, cSkills); // TODO: Create a cSkills object
skillsUI = layer_get_id("SkillsUI"); // Finds layer in room, stores id in variable

//fixes
global.processUnitDeath = false;

function ProcessDeath(){
	for (var i = 0; i < ds_list_size(global.units); i++){ // Read through unit list
		var inst = global.units[|i];
		if (inst.current[@HEALTH] <= 0){ // if any unit is <= 0, remove from list
			show_debug_message("remove "+string(inst)+" from the list."); //Only for debug
			ds_list_delete(global.units, ds_list_find_index(global.units, inst));
		}
	}
}

