state = PlayerStateFree;
stateAttack = AttackSlash;
hitByAttack = -1;
lastState = state;
skipStepEvent = 0;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0; // stops from spinning
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedCrawl = 3.0;
distanceCrawl = 52;
distanceBonk = 20;
distanceBonkHeight = 12;
speedBonk = 1.5;
Z = 0;

spriteCrawl = sPlayerCrawl;
spriteRun = Cat_Run;
spriteIdle = Cat_All;
localFrame = 0;

if (global.targetX != -1)
{
		x = global.targetX;
		y = global.targetY;
		direction = global.targetDirection;
}