function scr_player_falling() {
	if (place_meeting(x, y + 15, obj_wall)) {
		pstate = pstates.normal;
	}

	else {
		y += 15;
	}


}
