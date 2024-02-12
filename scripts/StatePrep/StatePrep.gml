function StatePrep() {
	y = ystart + sin(current_time*0.008)*6
	
	if (Jump()) {
		state = StateMain
		
		TweenFire(obj_game, "InOutSine", TWEEN_MODE_ONCE, true, 0, 0.5, "spr_tap_alpha", 1, 0)
		TweenFire(obj_game, "InOutSine", TWEEN_MODE_ONCE, true, 0, 0.5, "spr_title_alpha", 1, 0)
	}
}