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
global.selectedTargets = noone;


global.targets = ds_list_create(); // potential targets
global.targeting = false;

// Turns on/off specific UI layers
baseUI = layer_get_id("BaseUI"); // Finds layer in room, stores id in variable
targetUI = layer_get_id("TargetUI"); // Finds layer in room, stores id in variable