function scr_player_grappling() {
	vspd = 0;
	grav = 0;

	if (place_meeting(x, y - 30, obj_wall)) {
		pstate = pstates.dangling;
	}

	else {
		y -= 15;
	}


}
