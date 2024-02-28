function Die() {
	state = StateDead
	
	obj_game.flash = 1
	
	TweenFire(obj_game, "InOutSine", TWEEN_MODE_BOUNCE, true, 1, 0.2, "spr_gameover_y", 130, 120)
	TweenFire(obj_game, "OutCubic", TWEEN_MODE_ONCE, true, 1, 0.95, "spr_board_y", room_height * 1.5, room_height * 0.45)
	TweenFire(obj_game, "InOutCubic", TWEEN_MODE_ONCE, true, 1.5, 1.3, "score_final", 0, score)
	
	with obj_game {
		if (score > hi_score) {			
			ini_open("data.ini")
			ini_write_real("var", "score", score)
			ini_close()
		}
	}
	
	execute after 2 seconds
		with obj_game {
			if score >= 10 {
				medal_subimg = min(floor(score * 0.1) - 1, 3)
				show_medal = true
				
				execute every 0.18 seconds
					sparkle_subimg = (sparkle_subimg + 1) mod sprite_get_number(spr_sparkle)
					
					if sparkle_subimg == 0 {
						sparkle_x = medal_x + random_range(-12, 12)
						sparkle_y = medal_y + random_range(-12, 12)
					}
				done
			}
			
			show_buttons = true
		}
	done
}