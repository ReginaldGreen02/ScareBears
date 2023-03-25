text[0] = "Enemies Appeared!"

// Following text array for the battle system causes too
// many issues. It is currently commented out until the rest of the game
// is complete. Should time permit, we can tweak these to make them functional.
/*text[1] = "What will "+string(global.selectedUnit)+ " do?";
text[2] = string(global.selectedUnit)+" attacks!";
text[3] = string(global.selectedUnit)+" defends!";
text[4] = string(global.selectedUnit)+" missed!";
// text[5] does not work! Blaze Creates couldn't get it to work.
text[5] = "TEXT"; //string(selectedUnit)+ "uses "+string(global.selectedUnit.selectedSkill.name)+"!";
text[6] = "Not enough skill points!";
text[7] = "You won!";
text[8] = "Oh no! You lost!";
//text[9] = string(global.deadUnit)+" died."
text[10] = "Attack HIT!";
*/

text_current = 0; 
text_last = 1;
text_width = sprite_width-4; // Draw from one side of GUI to the other
text_x = x+4; // text offset
text_y = y+4; // text offset

char_current = 1;
char_speed = 0.25;

text[text_current] = spr_Dialog(text[text_current], text_width);