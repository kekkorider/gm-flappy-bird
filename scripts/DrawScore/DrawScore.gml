// REF: https://forum.gamemaker.io/index.php?threads/gm8-1-translating-a-score-into-sprites.58945/post-355880
function DrawScore() {
	var _i, _w, _temp_score, _num_digits, _x, _y
	
	with obj_game {
		_temp_score = score
	}

	_x = 24
	_y = 32
	
	if _temp_score > 0 {
		_num_digits = floor(log10(_temp_score))
		_w = sprite_get_width(spr_numbers)
	
		for (_i = _num_digits; _i >= 0; _i--) {
			draw_sprite(spr_numbers, _temp_score mod 10, _x + _i * _w, _y)
			_temp_score *= 0.1
		}
	} else {
		draw_sprite(spr_numbers, 0, _x, _y)
	}
}