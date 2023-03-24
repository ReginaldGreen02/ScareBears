if (layer_get_visible(skillsUI)){ // Is skillsUI visible? 
	layer_set_visible(skillsUI, false);
	instance_deactivate_layer(skillsUI);
} else { // Is skillsUI invisible?
	layer_set_visible(skillsUI, true);
	for (var i = 0; i < ds_list_size(global.skillsButtons); i++){ // Read through list size
		var _btn = global.skillsButtons[|i];
		_btn.Label = global.selectedUnit.learnedSkill[i].name; // TODO: Set learnedSkill to skill name 
	}
	instance_activate_layer(baseUI);
}