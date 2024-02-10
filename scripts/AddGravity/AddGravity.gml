function AddGravity() {
	v_speed = min(v_speed + gravity_acceleration, terminal_velocity)
	y += v_speed
}