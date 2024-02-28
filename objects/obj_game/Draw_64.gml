// Animate in UI
draw_sprite_ext(spr_title, 0, room_width * 0.5, spr_title_y, 1, 1, 0, c_white, spr_title_alpha)
draw_sprite_ext(spr_tap, 0, room_width * 0.5, room_height * 0.55, 1, 1, 0, c_white, spr_tap_alpha)

{
	var _x_offset = score == 0 ? 0 : floor(log10(score)) * sprite_get_width(spr_numbers) * 0.5
	DrawScore(score, room_width * 0.5 - _x_offset, 50, 1)
}

draw_sprite_ext(spr_gameover, 0, room_width * 0.5 , spr_gameover_y, 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_board, 0, room_width * 0.5 , spr_board_y, 1, 1, 0, c_white, 1)

{
	var _x_offset = score_final == 0 ? 0 : sprite_get_width(spr_numbers) * 0.5 * floor(log10(score_final))
	DrawScore(score_final, room_width * 0.5 + 85 - _x_offset, spr_board_y - 14, 0.5)
}

{
	var _x_offset = hi_score == 0 ? 0 : sprite_get_width(spr_numbers) * 0.5 * floor(log10(hi_score))
	DrawScore(hi_score, room_width * 0.5 + 85 - _x_offset, spr_board_y + 27, 0.5)
}

if show_new_hiscore
	draw_sprite(spr_new_hiscore, 0, room_width * 0.5 + 35, spr_board_y + 8)

if show_medal {
	draw_sprite_ext(spr_medal, medal_subimg, medal_x, medal_y, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_sparkle, sparkle_subimg, sparkle_x, sparkle_y, 1, 1, 0, c_white, 1)
}

if show_buttons {
	play_button.Draw()
	leaderboard_button.Draw()
}

layer_sprite_alpha(dim_sprite, dim)