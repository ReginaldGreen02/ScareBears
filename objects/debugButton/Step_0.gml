if (btnState == buttonState.active) { // can we interact with this button?
	if (MainFunc!=noone && position_meeting(MOUSEGUI_X,MOUSEGUI_Y,id)) { // if mouse pos is right ontop of the button.
		image_index = 1; 
		if (HoverFunc != noone){
			script_execute(HoverFunc);
		}
		if (mouse_check_button(mb_left)){ // if mouse button left is held down
			image_index = 2;
		}
		if (mouse_check_button_released(mb_left)) { //if button is released (i,e player has last minute change of heart)
			script_execute(MainFunc);
		}
		
			
	}
	else // if nothing is going on, but button is still active
		image_index = 0; // set image index to zero/base button image
}