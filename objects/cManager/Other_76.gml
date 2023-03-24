if (event_data[? "event_type"] == "sequence event"){
	switch(event_data[? "message"]){
		// When Unit attacks
		case "AttackSent":
			show_debug_message("I hit!");
			// Set target selected process as finished
			selectedFinished = true;
			//if (!global.selectedUnit.attackWillHit){ // Debug messages
			//	processFinished = true; // No longer necessary due to processFinished Check down below.
			//}
		break;
		
		case "UnitDefend":
			global.selectedUnit.turnFinished = true;
			selectedFinished = true;
			processFinished = true;
		break;
		
		// If Unit Misses
		case "UnitDeath": // Death of unit
		case "UnitMiss": // Both processes will finish with true, therefore no break needed after this case statement.
			show_debug_message("I missed!");
		// If Unit is hurt
		case "UnitHurt":
			// Set Hurt process as finished
			processFinished = true;
		break;
		
	}
}