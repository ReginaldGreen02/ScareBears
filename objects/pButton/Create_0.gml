#macro MOUSEGUI_X device_mouse_x_to_gui(0) // Converting mouse pointer pos x from room space to GUI space
#macro MOUSEGUI_Y device_mouse_y_to_gui(0) // Converting mouse pointer pos y from room space to GUI space

image_speed = 0; // Don't want button to animate; hence, speed = 0;

enum buttonState{ 
	active,
	inactive,
};

btnState = buttonState.active;

