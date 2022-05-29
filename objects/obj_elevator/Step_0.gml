/// @description Insert description here
// You can write your code in this editor
key_goup = keyboard_check_pressed(vk_up);
key_godown = keyboard_check_pressed(vk_down);

if (distance_to_object(obj_player) < 50) {
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)) {
		show_elevator_controls = true;
	}
}

else {
	show_elevator_controls = false;
}

if (show_elevator_controls) {
	if (obj_player.key_interact) {
		if (obj_breifcase.collected) {
			if (!first_elevator) {
				goingup = true;
				goingdown = false;
				
				switch (elevator_num) {
					case (1):
						if (obj_elevator_trigger1.ticked) {	
							obj_elevator_trigger1.ticked = false;
							elevatorstate = elevatorstates.opening;
						}
					break;
				
					case (2):
						if (obj_elevator_trigger2.ticked) {
							obj_elevator_trigger2.ticked = false;
							elevatorstate = elevatorstates.opening;
						}
					break;
				
					case (3):
						if (obj_elevator_trigger3.ticked) {				
							obj_elevator_trigger3.ticked = false;
							elevatorstate = elevatorstates.opening;
						}
					break;
				
					case (4):
						if (obj_elevator_trigger4.ticked) {			
							obj_elevator_trigger4.ticked = false;
							elevatorstate = elevatorstates.opening;
						}
					break;
				}
			}
		}
		
		else if (!obj_breifcase.collected) {
			//doesn't have breifcase
			if (!last_elevator) {
				goingup = false;
				goingdown = true;
							
				switch (elevator_num) {
					case (0):				
						elevatorstate = elevatorstates.opening;
					break;
				
					case (1):
						if (obj_elevator_trigger1.ticked) {			
							obj_elevator_trigger1.ticked = false;
							elevatorstate = elevatorstates.opening;
						}
					break;
				
					case (2):
						if (obj_elevator_trigger2.ticked) {			
							obj_elevator_trigger2.ticked = false;
							elevatorstate = elevatorstates.opening;
						}
					break;
				
					case (3):
						if (obj_elevator_trigger3.ticked) {	
							obj_elevator_trigger3.ticked = false;
							elevatorstate = elevatorstates.opening;
						}
					break;
				
					case (4):
						if (obj_elevator_trigger4.ticked) {
							obj_elevator_trigger4.ticked = false;
							elevatorstate = elevatorstates.opening;
						}
					break;
				}
			}
		}
	}
}

switch (elevatorstate) {
	case (elevatorstates.idle):
		sprite_index = spr_elevator;
	break;
	
	case (elevatorstates.opening):
		image_speed = 1;
		sprite_index = spr_elevator_opening;
	break;
	
	case (elevatorstates.closing):
		image_speed = 1;
		sprite_index = spr_elevator_closing;
	break;
}