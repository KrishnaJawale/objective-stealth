/// @description Insert description here
// You can write your code in this editor
with (obj_player_distraction_trigger) {
	if (place_meeting(x, y, obj_player)) {
		with (obj_objective_status_text) {
			objective_text = "Pick up object. Throw it using ENTER to divert enemies. Pick it up after use \nsince it's the only one you've got";
		}
	
		with (instance_nearest(x, y, obj_arrow)) {
			instance_destroy();
		}
	
		instance_destroy();
	}
}

with (obj_player) {
	if (has_distraction) {
		if (instance_exists(player_distraction_arrow)) {
			with (player_distraction_arrow) {
				instance_destroy();
				
				with (obj_objective_status_text) {
					objective_text = "Obtain breifcase from first floor";
				}
			}
		}
	}
}

if (obj_breifcase.collected) {
	if (!played_sound) {
		audio_play_sound(snd_helicopter_come, 11, false);
		played_sound = true;
	}
	
	if (!set_helicopter) {
		with (obj_helicopter) {
			go_right = true;
			other.set_helicopter = true;
		}
	}
	
	with (obj_objective_status_text) {
		objective_text = "Get to roof through the SINGLE POINT OF ENTRY";
	}
}