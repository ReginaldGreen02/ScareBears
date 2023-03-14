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