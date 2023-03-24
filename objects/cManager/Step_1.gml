// TEMP fix
if (global.processUnitDeath){
	show_message("Unit has died");
	ProcessDeath();
	global.processUnitDeath = false;
}