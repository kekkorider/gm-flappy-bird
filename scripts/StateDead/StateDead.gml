function StateDead() {	
	image_speed = 0
	image_index = 0
	
	AddGravity()
	
	y = min(y, 400 - sprite_get_height(spr_bird_blue) * 0.5)
}