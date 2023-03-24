ds_list_delete(owController.instanceList, ds_list_find_index(owController.instanceList, id));
instance_destroy();
room_goto_next(); // room_goto(insert_number) 