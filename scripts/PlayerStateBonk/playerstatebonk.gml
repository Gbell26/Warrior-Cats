
function PlayerStateBonk(){
	//movement
	hSpeed = lengthdir_x(speedBonk, direction - 180);
	vSpeed = lengthdir_y(speedBonk, direction - 180);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedBonk);
	var _collided = PlayerCollision();
	
	
	//update sprite
	sprite_index = sPlayerHurt;
	image_index = CARDINAL_DIR-2;
	
	//change height
	//sin function returns values in arc
	Z = sin(((moveDistanceRemaining/distanceBonk)*pi))*distanceBonkHeight;
	
	//Change state
	if(moveDistanceRemaining <= 0)
	{
		state = PlayerStateFree;
	}
}