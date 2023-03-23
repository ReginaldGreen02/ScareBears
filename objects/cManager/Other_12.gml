if (layer_get_visible(targetUI)){ // Is targetUI visible? 
	layer_set_visible(targetUI, false);
	instance_deactivate_layer(targetUI);
} else { // Is targetUI invisible?
	layer_set_visible(targetUI, true);
	instance_activate_layer(targetUI);
}