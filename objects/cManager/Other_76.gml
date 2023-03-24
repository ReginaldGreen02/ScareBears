if (event_data[? "event_type"] == "sequence event"){
	switch(event_data[? "message"]){
		// When Unit attacks
		case "AttackSent":
			show_message(string(global.selectedUnit)+" attacks!");
			// Set target selected process as finished
			selectedFinished = true;
			//if (!global.selectedUnit.attackWillHit){ // Debug messages
			//	processFinished = true; // No longer necessary due to processFinished Check down below.
			//}
		break;
		
		case "UnitDefend":
			show_message(string(global.selectedUnit)+" defends!");
			global.selectedUnit.turnFinished = true;
			selectedFinished = true;
			processFinished = true;
		break;
		
		// If Unit Misses
		case "UnitDeath": // Death of unit
			global.processUnitDeath = true;
		break;
		
		case "UnitMiss": // Both processes will finish with true, therefore no break needed after this case statement.
			show_debug_message(string(global.selectedUnit)+" missed!");
		// If Unit is hurt
		//case "UnitHurt":
			// Set Hurt process as finished
			processFinished = true;
		break;
		
		case "SkillSent":
			show_message(string(global.selectedUnit)+" uses "+string(global.selectedUnit.selectedSkill.name));
			selectedFinished = true;
			skillSent = false;
			
		break;
		
	}
}