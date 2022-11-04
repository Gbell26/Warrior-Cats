function PlayerStateCrawl(){
	//movement
	hSpeed = lengthdir_x(speedCrawl, direction);
	vSpeed = lengthdir_y(speedCrawl, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedCrawl);
	var _collided = PlayerCollision();
	
	
	//update sprite
	sprite_index = spriteCrawl;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _totalFrames) + min(((1 - (moveDistanceRemaining / distanceCrawl)) * _totalFrames), _totalFrames-1);
	
	//Change state
	if(moveDistanceRemaining <= 0)
	{
		state = PlayerStateFree;
	}
	if(_collided)
	{
		state = PlayerStateBonk;
		moveDistanceRemaining = distanceBonk;
		ScreenShake(2, 20);
	}
}