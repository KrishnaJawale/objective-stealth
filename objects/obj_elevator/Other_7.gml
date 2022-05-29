/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

switch (elevatorstate) {
	case (elevatorstates.opening):
		if (!closingbehind) {
			//layer = "ElevatorClosing";
			elevatorstate = elevatorstates.closing;
		}
		
		else {
			with (obj_player) {
				y = other.y;
				x = other.x;
			}
			
			closingbehind = true;
			elevatorstate = elevatorstates.closing;
		}
		
	break;
	
	case (elevatorstates.closing):
		if (!closingbehind) {
			//going up
					
			if (goingup) {
				if (!last_elevator) {
					save_y = y - 50
					
					with (obj_elevator) {
						if (elevator_num == other.elevator_num - 1) {
							other.nearest_elevator_above = id;
						}
					}
				
					with (nearest_elevator_above) {
						closingbehind = true;
						elevatorstate = elevatorstates.opening;
					}
		
					elevatorstate = elevatorstates.idle;
				}
				
				else {
					elevatorstate = elevatorstates.idle;
				}
			}
			
			//going down
			
			else if (goingdown) {
				if (!first_elevator) {
					save_y = y + 50
					//y += 1000000;
					//nearest_elevator_below = instance_nearest(x, save_y, obj_elevator);
					//y -= 1000000;
					
					with (obj_elevator) {
						if (elevator_num == other.elevator_num + 1) {
							other.nearest_elevator_below = id;
						}
					}
				
					with (nearest_elevator_below) {
						closingbehind = true;
						elevatorstate = elevatorstates.opening;
					}
		
					elevatorstate = elevatorstates.idle;
				}
				
				else {
					elevatorstate = elevatorstates.idle;
				}
			}
		}
		
		else {
			closingbehind = false;
			elevatorstate = elevatorstates.idle;
		}
		
	break;
}