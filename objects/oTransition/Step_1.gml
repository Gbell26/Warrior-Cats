/// @description Insert description here
// You can write your code in this editor
//progress transition

with (Oplayer) state = PlayerStateTransition;

if (leading == OUT)
{
	percent = min(1, percent + TRANSITION_SPEED);
	if (percent >= 1) //screen fully obscured
	{
		room_goto(targetroom);
		leading = IN;
	}

}
else //leading == IN
{
	percent = max(0, percent - TRANSITION_SPEED);
	if (percent <=0) // screen fully revealed
	{	
		with (Oplayer) state = PlayerStateFree;
		instance_destroy();
	}

}