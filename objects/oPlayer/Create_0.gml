// Inherit the parent event
event_inherited();

unitSequence = layer_sequence_create("sequences",x,y,sHeroBearSeq);
//unitSequence = layer_sequence_create("sequences",x,y,sPlayer);

/*
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
*/

idleStart = 2;
idleEnd= 9;

attackStart =10;
attackEnd = 27;

todefendStart = 82;
todefendEnd = 87;

defendStart = 88;
defendEnd  = 92;

hurtStart = 104;
hurtEnd = 108;

missStart = 93; // 105
missEnd = 103; // 116

deathStart = 109;
deathEnd = 120;

skillStart = 121;
skillEnd = 158;

learnedSkill[0] = global.skill[skill.slash]; // Single-target skill
learnedSkill[1] = global.skill[skill.multiSlash]; // Multi-target skill
