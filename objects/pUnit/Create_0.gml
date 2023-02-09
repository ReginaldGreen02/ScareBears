// These are the stats for the character which are self described, if you dont know ask another team member
#macro HEALTH 0
#macro SKILLPOINTS 1
#macro SPEED 2
#macro IDLE 0
#macro ATTACK 1
#macro DEFEND 2
#macro HURT 3
#macro MISS 4

state = IDLE;
state = ATTACK;
state = DEFEND;
base[HEALTH]  =10;
base[SKILLPOINTS] = 5;
base[SPEED] = irandom_range(1,10);
 
current[HEALTH] = base[@ HEALTH];
current[SKILLPOINTS] = base[@ SKILLPOINTS];
current[SPEED] = base[@ SPEED];

// This is to set the speed of animations