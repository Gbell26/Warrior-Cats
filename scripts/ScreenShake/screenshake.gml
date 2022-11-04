// arg Magnitude sets strength of shake
// arg Frames sets length of the shake in frames (60 = 1 second)
function ScreenShake(arg1, arg2){
	with (global.iCamera){
		if(arg1 > shakeRemain){
			shakeMagnitude = arg1;
			shakeRemain = shakeMagnitude;
			shakeLength = arg2;
		}
	}
}