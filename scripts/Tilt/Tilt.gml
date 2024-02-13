function Tilt() {
	var _multiplier = 2.3
	
	if v_speed > 0
		_multiplier = 0.7
		
	image_angle = clamp(image_angle - v_speed*_multiplier, -90, 20)
}