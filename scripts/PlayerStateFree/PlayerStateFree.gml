function PlayerStateFree(){
//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

PlayerCollision();

//update sprite index
var _oldSprite = sprite_index;
if (inputMagnitude != 0){
	direction = inputDirection;
	sprite_index = spriteRun;
}else sprite_index = spriteIdle;

if(_oldSprite != sprite_index){
	localFrame = 0;
}
//update image index
PlayerAnimateSprite();

if(keyCrawl)
{
		state = PlayerStateCrawl;
		moveDistanceRemaining = distanceCrawl;
}
//Activate key logic
if(keyActivate)
{
	//1 check for an entity to activate
	//2 check if nothing or something with no script - Roll!
	//3 otherwise, if something has script activate!
	// 4 if NPC face toward us
	
	var _activateX = lengthdir_x(10, direction);
	var _activateY = lengthdir_y(10, direction);
	activate = instance_position(x+_activateX, y+_activateY, pEntity);
	
	if(activate == noone || activate.entityActivateScript == -1){
		
		state = PlayerStateCrawl();
		moveDistanceRemaining = distanceCrawl;
	}
	else{
		ScriptExecuteArray(activate.entityActivateScript,activate.entityActivateArgs);
		
		//make NPC turn toward us
		if(activate.entityNPC){
			with(activate){
				direction = point_direction(x,y,other.x,other.y);
				image_index = CARDINAL_DIR;
			}
		}
	}
}
}