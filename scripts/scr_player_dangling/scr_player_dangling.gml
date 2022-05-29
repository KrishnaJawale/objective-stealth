function scr_player_dangling() {
	//Calculate movement
	grav = 0;

	var move = key_right - key_left;

	hspd = move * player_dangle_spd;

	//if (!place_meeting(x, y - 1, obj_wall)) {
	//	if (!alligned) {
	//		y -= 1;
	//	}
	
	//	else {
	//		alligned = false;
	//		pstate = pstates.falling;
	//	}
	//}

	//else if (place_meeting(x, y - 1, obj_wall)) {
	//	alligned = true;
	//}

	if (!place_meeting(x, y - 1, obj_wall)) {
		y -= 1;
	}

	if (key_jump) {
		pstate = pstates.falling;
	}


}
