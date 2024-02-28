function Die() {
	state = StateDead
	
	obj_game.flash = 1
	
	execute after 1 seconds
		TweenFire(obj_game, "InOutSine", TWEEN_MODE_BOUNCE, true, 0, 0.2, "spr_gameover_y", 130, 120)
		TweenFire(obj_game, "OutCubic", TWEEN_MODE_ONCE, true, 0, 0.95, "spr_board_y", room_height * 1.5, room_height * 0.45)
		TweenFire(obj_game, "InOutCubic", TWEEN_MODE_ONCE, true, 0.5, 1.3, "score_final", 0, score)
	done
	
	execute after 2 seconds
		if (score >= 10) {
			obj_game.medal_subimg = min(floor(score * 0.1) - 1, 3)
			obj_game.show_medal = true
		}
	done
}