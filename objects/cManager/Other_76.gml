if (event_data[? "event_type"] == "sequence event"){
	switch(event_data[? "message"]){
		case "AttackSent":
			selectedFinished = true;
			if (!global.selectedUnit.attackWillHit){
				processFinished = true;
			}
		break;
		case "UnitHurt":
			processFinished = true;
		break;
	}
}