if x < obj_bird.x {
	if should_trigger_score && triggers_score {
		with obj_game {
			score++
		}
		
		triggers_score = false
	}
} else {
	triggers_score = true
}