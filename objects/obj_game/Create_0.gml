pipes_distance = 160
pipes_gap = 90

score = 0

var _bg_layer_id = layer_get_id("Background")
var _bg_id = layer_background_get_id(_bg_layer_id)
layer_background_index(_bg_id, choose(0, 1))

for (var _i = 2; _i >= 0; _i--) {
	var _x = room_width + pipes_distance * _i
	var _y = random_range(200, 300)
	
	instance_create_layer(_x, _y, "Pipes", obj_pipe, {
		should_trigger_score: true
	})
	
	var _upper_pipe = instance_create_layer(_x, _y - pipes_gap, "Pipes", obj_pipe)
	_upper_pipe.image_yscale = -1
	
	
}