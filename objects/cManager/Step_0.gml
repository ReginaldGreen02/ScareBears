switch(combatPhase){
	case  phase.init:
		for(var i = 0; i < instance_number(cSpawn); i++ ){
			var spawner = instance_find(cSpawn, i);
			var unit = instance_create_depth(spawner.x,spawner.y,0,pUnit);
			ds_list_add(global.units,unit);
		}
		combatPhase = phase.startTurn;
	break;
	
	case  phase.startTurn:
		combatPhase = phase.wait;
	break;
	
	case  phase.wait:
		combatPhase = phase.process;
	break;
	
	case  phase.process:
		combatPhase = phase.checkFinish;
	break;
	
	case  phase.checkFinish:
		if(keyboard_check_released(vk_space))
			combatPhase = phase.endTurn;
		if(keyboard_check_released(vk_enter))
			combatPhase = phase.win;
		if(keyboard_check_released(vk_control))
			combatPhase = phase.lose;
	break;
	
	case  phase.endTurn:
		combatPhase =phase.startTurn;
	break;
	
	case  phase.win:
		// What haoppens if we win
	break;
	
	case  phase.lose:
		//what happenes if we lose
	break;
}