// REF: https://forum.gamemaker.io/index.php?threads/gm8-1-translating-a-score-into-sprites.58945/post-355880
function DrawScore(_score, _x, _y, _scale = 1) {
	var _i, _w, _temp_score, _num_digits
	
	_temp_score = _score
	
	if _temp_score > 0 {
		_num_digits = floor(log10(_temp_score))
		_w = sprite_get_width(spr_numbers)
	
		for (_i = _num_digits; _i >= 0; _i--) {
			draw_sprite_ext(spr_numbers, _temp_score mod 10, _x + _i * _w * _scale, _y, _scale, _scale, 0, c_white, 1)
			_temp_score *= 0.1
		}
	} else {
		draw_sprite_ext(spr_numbers, 0, _x, _y, _scale, _scale, 0, c_white, 1)
	}
}