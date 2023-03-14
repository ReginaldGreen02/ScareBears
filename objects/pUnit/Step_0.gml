switch(state){
	case IDLE:
		if(layer_sequence_get_headpos(unitSequence) > idleEnd){
			layer_sequence_headpos(unitSequence, idleStart); 	
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
				layer_sequence_headpos(unitSequence, idleStart);
				incomingDamage = 0;
				state = IDLE;
			}
			else {
				layer_sequence_headpos(unitSequence, deathStart);
				ds_list_delete(global.units,ds_list_find_index(global.units, id));
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
}
