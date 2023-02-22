// These are the stats for the character which are self described, if you dont know ask another team member
#macro HEALTH 0
#macro SKILLPOINTS 1
#macro SPEED 2

#macro IDLE 0
#macro ATTACK 1
#macro TODEFEND 2
#macro DEFEND 3
#macro HURT 4
#macro MISS 5

state = IDLE;

base[HEALTH]  =10;
base[SKILLPOINTS] = 5;
base[SPEED] = irandom_range(1,10);
 
current[HEALTH] = base[@ HEALTH];
current[SKILLPOINTS] = base[@ SKILLPOINTS];
current[SPEED] = base[@ SPEED];

turnFinished = false;
selected = false;
// This is to set the speed of animations