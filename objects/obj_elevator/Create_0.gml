/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
last_elevator = false;
first_elevator = false;

enum elevatorstates {
	idle,
	opening,
	closing
}

elevatorstate = elevatorstates.idle;

goingup = false;
goingdown = true;
closingbehind = false;

nearest_elevator_above = 0;
nearest_elevator_below = 0;

elevator_num = 0;

//show_elevator_controls = false;