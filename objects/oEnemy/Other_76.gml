if (event_data[? "event_type"] == "sequence event"){
	switch(event_data[? "message"]){
		case "AttackSent": // Checks if Unit Attack is sent.
			if(global.selectedUnit != id){
				var randomNumber = random(1);
				if (randomNumber > 0.2){
					show_debug_message(string(id)+ " I saw that!");
				}
			}
		break;
	}
}