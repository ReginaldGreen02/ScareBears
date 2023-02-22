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

global.selectedUnit = noone;
global.units = ds_list_create()