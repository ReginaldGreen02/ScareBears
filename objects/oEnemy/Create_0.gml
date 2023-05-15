// Inherit the parent event
event_inherited();

//unitSequence = layer_sequence_create("sequences",x,y,sHeroBearSeq);
unitSequence = layer_sequence_create("sequences",x,y,sPlayer);


idleStart = 2;
idleEnd= 22;

attackStart = 25;
attackEnd = 64;

todefendStart = 68;
todefendEnd = 88;

defendStart = 91;
defendEnd  = 103;

hurtStart = 105;
hurtEnd = 116;

missStart = 119; // 105
missEnd = 130; // 116

deathStart = 131;
deathEnd = 142;

skillStart = 143;
skillEnd = 184;

hurtClawStart = 185;
hurtClawEnd = 205;

learnedSkill[0] = global.skill[skill.slash]; // Single-target skill
learnedSkill[1] = global.skill[skill.multiSlash]; // Multi-target skill


/*
idleStart = 2;
idleEnd= 9;

attackStart =10;
attackEnd = 19;

todefendStart = 74;
todefendEnd = 79;

defendStart = 80;
defendEnd  = 84;

hurtStart = 96;
hurtEnd = 100;

missStart = 85; // 105
missEnd = 95; // 116

deathStart = 101;
deathEnd = 112;

skillStart = 20;
skillEnd = 52;

learnedSkill[0] = global.skill[skill.slash]; // Single-target skill
learnedSkill[1] = global.skill[skill.multiSlash]; // Multi-target skill
*/