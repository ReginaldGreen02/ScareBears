// TEMP fix
if (global.processUnitDeath){
	show_debug_message("Unit has died");
	ProcessDeath();
	global.processUnitDeath = false;
}
//