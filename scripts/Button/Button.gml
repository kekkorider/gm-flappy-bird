function Button(_x, _y, _spr, _on_release) constructor {
	x = _x
	y = _y
	spr = _spr
	on_release = _on_release
	
	static Draw = function() {
		draw_sprite(spr, 0, x, y + buttonPressed())
		
		if buttonReleased() {
			script_execute(on_release)
		}
	}
	
	static buttonPressed = function() {
		var _half_w = sprite_get_width(spr) * 0.5
		var _half_h = sprite_get_height(spr) * 0.5
		
		var _x1 = x - _half_w
		var _y1 = y - _half_h
		var _x2 = x + _half_w
		var _y2 = y + _half_h
		
		return (mouse_check_button(mb_left) && point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x2, _y2))
	}
	
	static buttonReleased = function() {
		var _half_w = sprite_get_width(spr) * 0.5
		var _half_h = sprite_get_height(spr) * 0.5
		
		var _x1 = x -_half_w
		var _y1 = y -_half_h
		var _x2 = x +_half_w
		var _y2 = y + _half_h
		
		return (mouse_check_button_released(mb_left) && point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x2, _y2))
	}
}