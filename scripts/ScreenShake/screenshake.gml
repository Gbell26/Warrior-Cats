// arg Magnitude sets strength of shake
// arg Frames sets length of the shake in frames (60 = 1 second)
function ScreenShake(){
	with (global.iCamera){
		if(argument0 > shakeRemain){
			shakeMagnitude = argument0;
			shakeRemain = shakeMagnitude;
			shakeLength = argument1;
		}
	}
}