function scr_player_normal() {
	grav = 1.3;

	if (key_grapple) {
		if (able_to_grapple) {
			pstate = pstates.grappling;
		}
	}


}
