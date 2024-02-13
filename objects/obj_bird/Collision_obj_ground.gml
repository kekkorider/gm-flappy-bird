if state != StateDead {
	state = StateDead
	obj_game.flash = 1

	audio_play_sound(sound_hit, 0, 0)
}