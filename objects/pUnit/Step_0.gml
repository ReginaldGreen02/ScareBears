switch(state){
	case IDLE:
		if(!defending){
			if(layer_sequence_get_headpos(unitSequence) > idleEnd){
				layer_sequence_headpos(unitSequence, idleStart); 	
			}
		}
	case ATTACK:
		if(layer_sequence_get_headpos(unitSequence) > attackEnd){
			turnFinished = true;
			if (attackWillHit){
				layer_sequence_headpos(unitSequence, idleStart);
				state = IDLE;
			} else {
				layer_sequence_headpos(unitSequence, missStart);
				state = MISS;
			}
		}
	break;
	case MISS:
		if(layer_sequence_get_headpos(unitSequence) > missEnd){
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
	break;
	case HURT:
		if(layer_sequence_get_headpos(unitSequence) > hurtEnd){
			DamageUnit(incomingDamage);
			if (current[@ HEALTH] > 0){
				cManager.processFinished = true; // fixes...HACK
				layer_sequence_headpos(unitSequence, idleStart);
				incomingDamage = 0;
				state = IDLE;
			}
			else {
				layer_sequence_headpos(unitSequence, deathStart);
				//ds_list_delete(global.units,ds_list_find_index(global.units, id));
				state = DEATH;
			}
		}
	break;
	case TODEFEND:
		if(layer_sequence_get_headpos(unitSequence) > todefendEnd){
			layer_sequence_headpos(unitSequence, defendStart);
			state = DEFEND;
		}
	break;
	case DEFEND:
		if(layer_sequence_get_headpos(unitSequence) > defendEnd){
			layer_sequence_headpos(unitSequence, defendStart);
			
		}
	break;
	case DEATH:
		if (layer_sequence_get_headpos(unitSequence) > deathEnd){
			instance_destroy();
		}
	break;
	case SKILL:
		if (layer_sequence_get_headpos(unitSequence) > skillEnd){
			UseSkillPoints(selectedSkill.cost); // Use points after animation is finished
			turnFinished = true;
			if (attackWillHit){ // If skill hits
				//turnFinished = true;
				layer_sequence_headpos(unitSequence, idleStart);
				state = IDLE;
			} else { // If skill misses
				//turnFinished = true;
				layer_sequence_headpos(unitSequence, missStart);
				state = MISS;
			}
			selectedSkill = -1; // Reset skill
		}
	break;
}

// Check if we are targeting and if current selected unit is not the same as the target.
// Don't want player to attack themself.
if ((global.targeting || global.skillTargeting) && global.selectedUnit != noone){
	if (position_meeting(mouse_x, mouse_y, id) && team != global.selectedUnit.team){ //Check if mouse pos is colliding with the object
		drawTarget = true;
		// (Potential) If using animated sprite for the targeting object
		//target.x = x
		//target.y = y
	}else drawTarget = false;
}