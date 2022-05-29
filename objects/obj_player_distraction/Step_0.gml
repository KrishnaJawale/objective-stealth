/// @description Insert description here
// You can write your code in this editor
if (obj_player.has_distraction) {
	picked_up = true;
}

else {
	picked_up = false;
}

if (!picked_up) {
	vspd = vspd + grav;

	if (place_meeting(x + hspd, y, obj_wall)) {
		while (!place_meeting(x + sign(hspd), y, obj_wall)) {
			x = x + sign(hspd);
		}
	
		hspd = -hspd;
	}

	if (place_meeting(x + hspd, y, obj_door)) {
		while (!place_meeting(x + sign(hspd), y, obj_door)) {
			x = x + sign(hspd);
		}
	
		hspd = -hspd;
	}

	x = x + hspd;

	//Vertical player-wall collision
	if (place_meeting(x, y + vspd, obj_wall)) {
		while (!place_meeting(x, y + sign(vspd), obj_wall)) {
			y = y + sign(vspd);
		}
	
		vspd = 0;
		hspd = 0;
		
		if (from_throw) {
			audio_play_sound(snd_clang, 12, false);
			with (obj_enemy) {
				if (!collision_line(x, y, obj_player_distraction.x, obj_player_distraction.y, obj_wall, false, false)) {
					alert_x = obj_player_distraction.x;
					is_confused = true;
					
					//with (obj_door) {
					//	doorstate = doorstates.open;
					//}
				}
			}
			
			from_throw = false;
		}
	}

	y = y + vspd;
}

else {
	x = obj_player.x;
	y = obj_player.y;
}