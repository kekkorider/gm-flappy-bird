// Animate in UI
draw_sprite_ext(spr_title, 0, room_width * 0.5, spr_title_y, 1, 1, 0, c_white, spr_title_alpha)
draw_sprite_ext(spr_tap, 0, room_width * 0.5, room_height * 0.55, 1, 1, 0, c_white, spr_tap_alpha)

DrawScore(score, 24, 32, 1)

draw_sprite_ext(spr_gameover, 0, room_width * 0.5 , spr_gameover_y, 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_board, 0, room_width * 0.5 , spr_board_y, 1, 1, 0, c_white, 1)

DrawScore(score_final, room_width * 0.5 + 85 - sprite_get_width(spr_numbers) * 0.5 * floor(log10(score_final)), spr_board_y - 14, 0.5)

if show_medal
	draw_sprite_ext(spr_medal, medal_subimg, room_width * 0.5 - 64, spr_board_y + 8, 1, 1, 0, c_white, 1)