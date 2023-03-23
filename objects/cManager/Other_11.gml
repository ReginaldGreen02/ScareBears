if (layer_get_visible(baseUI)){ // Is baseUI visible? 
	layer_set_visible(baseUI, false);
	instance_deactivate_layer(baseUI);
} else { // Is baseUI invisible?
	layer_set_visible(baseUI, true);
	instance_activate_layer(baseUI);
}