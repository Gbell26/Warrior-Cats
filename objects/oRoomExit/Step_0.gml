// Cause room transition

if (instance_exists(Oplayer)) && (position_meeting(Oplayer.x,Oplayer.y,id))
{
	global.targetRoom=targetRoom;
	global.targetX=targetX;
	global.targetY=targetY;
	global.targetDirection=Oplayer.direction;
	with (Oplayer) state = PlayerStateTransition;
	RoomTransition(TRANS_TYPE.SLIDE, targetRoom);
	instance_destroy();
}

