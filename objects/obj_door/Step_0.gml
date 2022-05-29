/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_player) < 72) {
	if (keyboard_check_pressed(ord("F"))) {
		switch (doorstate) {
			case (doorstates.closed):
				if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)) {
					doorstate = doorstates.open;
				}
			break;
	
			case (doorstates.open):
				doorstate = doorstates.closed;
			break;
		}
	}
}

switch (doorstate) {
	case (doorstates.closed):
		if (y != start_y) {
			y += 16;
		}
	break;
	
	case (doorstates.open):
		if (y != door_opening_buffer) {
			y -= 16;
		}
	break;
}