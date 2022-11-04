
function newTextBox(){
	var _obj;
	if(instance_exists(Otext)) _obj = OtextQueued; else _obj = Otext;
	with (instance_create_layer(0,0,"Instances", _obj)){
		textMessage = argument[0];
		if(instance_exists(other)) originInstance = other.id else originInstance = noone;
		if(argument_count > 1) background = argument[1]; else background = 1;
		if(argument_count > 2) {
			//trim markers from responses
			var _array = argument[2];
			for(var _i=0;_i<array_length(_array)  ;_i++)
				{
				 responses[_i]=_array[_i];
				}
			for (var i = 0; i < array_length(responses); i++){
				var _markerPosition = string_pos(":",responses[i]);
				responseScripts[i] = string_copy(responses[i],1,_markerPosition-1);
				responseScripts[i] = real(responseScripts[i]);
				responses[i] = string_delete(responses[i],1,_markerPosition);
				breakpoint = 10;
			}
		}
		else{
				responses = [-1];
				responseScripts = [-1];
			}
		}
	
	with(Oplayer){
		if(state != PlayerStateLocked){
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}
