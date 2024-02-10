if obj_bird.state == StateDead
	exit

var _pipe_width = sprite_get_width(spr_pipe_green)

for (var _i = 0; _i < instance_number(obj_pipe); _i += 2) {
	var _lower_pipe = instance_find(obj_pipe, _i)
	var _upper_pipe = instance_find(obj_pipe, _i + 1)
	
	_lower_pipe.x -= 1.5
	_upper_pipe.x = _lower_pipe.x
	
	if _lower_pipe.x <= _pipe_width * -0.5 {
		_lower_pipe.x = room_width + pipes_distance + _pipe_width * 0.5
		
		_lower_pipe.y = random_range(200, 330)
		_upper_pipe.y = _lower_pipe.y - pipes_gap
	}
}