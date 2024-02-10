function StateMain() {
	var _is_jumping = (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) && y > 24

	if _is_jumping v_speed = jump_speed

	AddGravity()
}