/// @description Insert description here
// You can write your code in this editor

if (!is_confused) {
	if (has_been_confused) {
		if (alarm[2] == -1) {
			alarm[2] = 180;
		}
			
		with (confused_inst) {
			instance_destroy();
		}
	}

		
	vspd = vspd + grav;

	if (can_move) {
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
	}

	//Vertical player-wall collision
	if (place_meeting(x, y + vspd, obj_wall)) {
		while (!place_meeting(x, y + sign(vspd), obj_wall)) {
			y = y + sign(vspd);
		}
	
		vspd = 0;
	}

	y = y + vspd;

	if (hspd < 0) {
		image_xscale = -1;
		
	}

	else if (hspd > 0) {
		image_xscale = 1;
	}
}

if (is_confused) {
		
	if (run_confused_code) {
		enemy_spd = 4;
		if (alert_x < x) {
			hspd = -enemy_spd;
			image_xscale = -1;
				
			if (place_meeting(x - 32, y, obj_door)) {
				with (instance_nearest(x - 32, y, obj_door)) {
					doorstate = doorstates.open;
				}
			}
		}
	
		else if (alert_x > x) {
			hspd = enemy_spd;
			image_xscale = 1;
				
			if (place_meeting(x + 32, y, obj_door)) {
				with (instance_nearest(x + 32, y, obj_door)) {
					doorstate = doorstates.open;
				}
			}
		}
		
		if (!confused_inst_created) {			
			confused_inst = instance_create_layer(x, y - 50, "Instances", confused);
			confused_inst_created = true;
		}
		
		if (distance_to_point(alert_x, y) < 32) {
			if (alarm[0] == -1) {
				alarm[0] = 60;
			}
		}
		
		else {					
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
		}
	}
		
	else {
		if (alarm[1] == -1) {
			alarm[1] = 30;
		}
	}
}

if (hspd != 0) {
	image_speed = 1;
	sprite_index = spr_enemy_walk;
}