// This is suppose to sort based on the speed of the Unit

function BubbleSort(list){
	var listSize = ds_list_size(list);
	for (var i = 0; i < listSize - 1; i++){
		for( var j = 0; j < listSize - i - 1; j++){
			if(list[|j].current[@ SPEED] == list[|j+1].current[@ SPEED]){ // Havent decided what to do when two units have the same speed. Idea: If their base speed is higher they go first, then what?
			
				
			}
			if(list[|j].current[@ SPEED] < list[|j+1].current[@ SPEED]){ // Unit with the higher speed number will go
				var temp = list[|j];
				list[|j] = list[|j+1];
				list[|j +1] = temp;
			}
		}
	}
}

// Function that checks whether Unit attack hits/misses
function CheckForHit(){
	var number = random(1);
	var unit = global.selectedUnit;
	if (number > unit.current[@ ACCURACY])
		unit.attackWillHit = true;
	else
		unit.attackWillHit = false;
}

// Function that calculates Unit damage dealt and starts Hurt animation
function UnitAttack(){
	var unit = global.selectedUnit;
	if (unit.attackWillHit){
		for(var i = 0; i < ds_list_size(global.selectedTargets); i++){
			with(global.selectedTargets[|i]){
			
				if (defending){
					defending = false;
				}
			
				incomingDamage = unit.current[@ ATTACKPOWER]; //  (Potential) When bears boost stats, attack multiplier addition?
				state = HURT;
				layer_sequence_headpos(unitSequence, hurtStart); // Potential bug(?): May be activating on Player Unit and not selected target. Further tests needed.
			}
		}
	}
}

function unitDefend(){
	with(global.selectedUnit){
		defending = true;
	}
}

function UnitSkill(){
	if (global.selectedUnit.attackWillHit && !cManager.skillSent){
		cManager.skillSent = true;
		for (var i = 0; i < ds_list_size(global.selectedTargets); i++){
			with (global.selectedTargets[|i]){
				if (defending){
					defending = false;
				}
				incomingDamage = global.selectedUnit.selectedSkill.healthChange;
				state = SKILLHURT;
				layer_sequence_headpos(unitSequence, hurtClawStart);
			}
		}
	}
}

function singleTargetAttack(_unit){
	ds_list_add(global.selectedTargets, _unit);
}

function multiTargetAttack(){
	ds_list_copy(global.selectedTargets, global.targets); // id is the list to copy to, source is where we copy from;
}

// Very simple AI function
function AIChoose(){
	for (var i = 0; i < ds_list_size(global.units); i++){
		var _inst = global.units[| i]; // store units in temp var
		if (_inst.team != global.selectedUnit.team){ // Check team, if not the same as selectedUnit
			ds_list_add(global.targets, _inst); // Add to target list
		}
	}
	var _unit = global.targets[| irandom(1)]; // Grab random unit from list, story in var
	ds_list_clear(global.selectedTargets); // clear selectedTarget's list
	with (global.selectedUnit){ 
		state = ATTACK;
		layer_sequence_headpos(unitSequence, attackStart);
	}
	ds_list_add(global.selectedTargets, _unit);
	cManager.aiDone = true;
	
}