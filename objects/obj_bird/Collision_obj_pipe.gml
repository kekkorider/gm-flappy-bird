if state != StateDead {
	audio_play_sound(sound_hit, 0, 0)
	
	v_speed = jump_speed
	
	execute after 0.1 seconds
		audio_play_sound(sound_die, 0, 0)
	done
	
	obj_game.flash = 1
}

state = StateDead