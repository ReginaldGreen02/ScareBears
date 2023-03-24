enum skillStat{
	name,
	element, // set with skillElement (i.e. fire, water, etc.)
	type, // set with skillType (i.e. Physical, Magic, etc.)
	targets,
	healthChange, // Damage or Healing (Healing must be typed as negative HP!)
	cost, // SP cost
	action // function to run
};

// Type of Skill
enum skillType{
	physical,
	magic
};

// Element of Skill
enum skillElement{
	none,
	fire,
	ice
};

// Constructor function for skill object
Skill = function(_name, _element, _type, _healthChange, _cost, _action) constructor {
	name = _name;
	element = _element;
	type = _type;
	healthChange = _healthChange;
	cost = _cost;
	action = _action;
}

// Skills objects
global.skill[skill.slash] = new Skill("Slash", skillElement.none, skillType.physical, 2, 1, singleTargetAttack);
global.skill[skill.multiSlash] = new Skill("M-Slash", skillElement.none, skillType.physical, 2, 2, multiTargetAttack);