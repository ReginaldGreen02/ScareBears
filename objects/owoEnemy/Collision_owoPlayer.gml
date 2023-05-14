ds_list_delete(owoController.instanceList, ds_list_find_index(owoController.instanceList, id));
instance_destroy();
room_goto(rmCombat);