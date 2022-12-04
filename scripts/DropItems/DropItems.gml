//DropItems(x,y,[items])
//arg x
//argy
//arg [items] array of items to be dropped
 function DropItems(_x, _y, items){
	var _items = array_length(items)
	
	if(_items >1){
		var _anglePerItem=360/_items;
		var _angle = random(360);
		for(var i=0; i< _items; i++){
			with (instance_create_layer(_x, _y, "Instances",items[i]))
			{
				direction = _angle;
				spd = 0.75 + (_items * 0.1) + random(0.1);				
			}
			_angle += _anglePerItem;
		}
	}
	else instance_create_layer(_x, _y, "Instances", items[0]);
}