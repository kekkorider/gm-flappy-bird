randomize()

// Variables
score = 0
score_final = 0

pipes_distance = 160
pipes_gap = 90

flash = 0

spr_tap_alpha = 1
spr_title_alpha = 1
spr_title_y = room_height * 0.25
spr_gameover_y = sprite_get_height(spr_gameover) * -1
spr_board_y = room_height * 1.5

show_medal = false
medal_subimg = 0
medal_x = room_width * 0.5 - 64
medal_y = room_height * 0.5 - 19

sparkle_subimg = 0
sparkle_x = medal_x + random_range(-12, 12)
sparkle_y = medal_y + random_range(-12, 12)

// Set random background
var _bg_layer_id = layer_get_id("Background")
var _bg_id = layer_background_get_id(_bg_layer_id)
layer_background_index(_bg_id, choose(0, 1))

audio_set_master_gain(0, 0.1)

for (var _i = 2; _i >= 0; _i--) {
	var _x = sprite_get_width(spr_pipe_green) * 0.5 + room_width + pipes_distance * _i
	var _y = random_range(200, 300)
	
	instance_create_layer(_x, _y, "Pipes", obj_pipe, {
		should_trigger_score: true
	})
	
	var _upper_pipe = instance_create_layer(_x, _y - pipes_gap, "Pipes", obj_pipe)
	_upper_pipe.image_yscale = -1
}

TweenFire(self, "OutElastic", TWEEN_MODE_ONCE, true, 0, 1.3, "spr_title_y", sprite_get_height(spr_title) * -0.5, room_height * 0.25)