function StatePrep() {
	y = ystart + sin(current_time*0.008)*6
	
	if (Jump()) {
		state = StateMain
	}
}