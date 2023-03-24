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
		with(global.selectedTargets){
			
			if (defending){
				defending = false;
			}
			
			incomingDamage = unit.current[@ ATTACKPOWER]; //  (Potential) When bears boost stats, attack multiplier addition?
			state = HURT;
			layer_sequence_headpos(unitSequence, hurtStart); // Potential bug(?): May be activating on Player Unit and not selected target. Further tests needed.
		}
	}
}

function unitDefend(){
	with(global.selectedUnit){
		defending = true;
	}
}