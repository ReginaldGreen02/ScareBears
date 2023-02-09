switch(state){
	case IDLE:
		if(layer_sequence_get_headpos(unitSequence) > idleEnd){
			layer_sequence_headpos(unitSequence, idleStart); 	
		}
	case ATTACK:
		if(layer_sequence_get_headpos(unitSequence) > attackEnd){
			layer_sequence_headpos(unitSequence, attackStart);
		}
	break;
}
