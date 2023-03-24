// Inherit the parent event
event_inherited();

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

learnedSkill[0] = global.skill[skill.slash]; // Single-target skill
learnedSkill[1] = global.skill[skill.multiSlash]; // Multi-target skill