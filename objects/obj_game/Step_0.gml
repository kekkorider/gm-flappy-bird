for (var _i = 0; _i < instance_number(obj_pipe); _i++) {
	var _pipe = instance_find(obj_pipe, _i)
	
	_pipe.x -= 1
	
	if _pipe.x <= sprite_get_width(spr_pipe_green) * -0.5
		_pipe.x = room_width + sprite_get_width(spr_pipe_green)
}