for (var _i = 2; _i >= 0; _i--) {
	var _x = room_width + 160 * _i
	var _y = random_range(200, 300)
	
	instance_create_layer(_x, _y, "Pipes", obj_pipe)
	
	var _upper_pipe = instance_create_layer(_x, _y - 110, "Pipes", obj_pipe)
	_upper_pipe.image_yscale = -1
}