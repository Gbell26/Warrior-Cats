// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueResponses(argument0){
	switch(argument0)
	{
		case 0: break;
		case 1: newTextBox("I am and elder Cat", 1, ["3:Meow"]); break;
		case 2: newTextBox("I hope I don't have any dingleberries today", 1, ["3:Meow Meow","3:Meow!"]); break;
		case 3: newTextBox("Anyway welcome to my island!", 1, ["4:Meow!"]); break;
		case 4: newTextBox("Oh no you've lost your family?", 1, ["5:meow"]); break;
		case 5: newTextBox("Well the only way to survive out here\nis to start your own clan!", 1, ["6:Meow!"]); break;
		case 6: newTextBox("Go find, find clan members!", 1); break;
		default: break;
	}
}