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
