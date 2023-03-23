

// The following 4 macros are ONLY for the UI functionality -- Nothing else!
#macro Camera_Width camera_get_view_width(view_camera[0]) //Gets Width of Viewport 0
#macro Camera_Height camera_get_view_height(view_camera[0]) //Gets Height of Viewport 0

#macro Display_ScaleX display_get_gui_width()/Camera_Width // Gets the X space of the GUI items as World Space
#macro Display_ScaleY display_get_gui_height()/Camera_Height // Gets the Y space of the GUI items as World Space

// These are the stats for the character which are self described, if you dont know ask another team member
#macro HEALTH 0
#macro SKILLPOINTS 1
#macro SPEED 2
#macro ATTACKPOWER 3
#macro DEFENSEPOWER 4
#macro ACCURACY 5
// #macro CURRENTACCURACY 5 // Potential addition for live accuracy updates

#macro IDLE 0
#macro ATTACK 1
#macro TODEFEND 2
#macro DEFEND 3
#macro HURT 4
#macro MISS 5
#macro DEATH 6

state = IDLE;

base[HEALTH]  =10;
base[SKILLPOINTS] = 5;
base[SPEED] = irandom_range(1,10);
base[ATTACKPOWER] = irandom_range(1,5);
base[DEFENSEPOWER] = 1;
base[ACCURACY] = 0.5;
// base[CURRENTACCURACY] = 0.5; // Potential addition for live accuracy updates

 
current[HEALTH] = base[@ HEALTH];
current[SKILLPOINTS] = base[@ SKILLPOINTS];
current[SPEED] = base[@ SPEED];
current[ATTACKPOWER] = base[@ ATTACKPOWER];
current[DEFENSEPOWER] = base[@ DEFENSEPOWER];
current[ACCURACY] = base[@ ACCURACY];

turnFinished = false;
selected = false;
attackWillHit = false;
incomingDamage = 0;
hpBarWidth = sprite_get_width(uiHP);
hpBarHeight = sprite_get_height(uiHP);

drawTarget = false;

// Function that updates health when damage is dealt/received
function DamageUnit(amount){
	var damage = amount - current[@DEFENSEPOWER]; // (Potential) When bears boost stats, defense multiplier addition?
	if (damage < 0){
		current[HEALTH] = current[@HEALTH];
	} else{
		current[@HEALTH] -= damage;
	}
	
	//The following does the same thing as if/else statement above in one line:
	//current[@HEALTH] -= max(0, damage);
}