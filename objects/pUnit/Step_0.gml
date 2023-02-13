switch(state){
	case IDLE:
		if(layer_sequence_get_headpos(unitSequence) > idleEnd){
			layer_sequence_headpos(unitSequence, idleStart); 	
		}
	case ATTACK:
		if(layer_sequence_get_headpos(unitSequence) > attackEnd){
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
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
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
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
}
