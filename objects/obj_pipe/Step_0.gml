if x < obj_bird.x {
	if should_trigger_score && triggers_score {
		with obj_game {
			score += irandom_range(10, 100)
		}
		
		triggers_score = false
		audio_play_sound(sound_point, 0, 0)
	}
} else {
	triggers_score = true
}