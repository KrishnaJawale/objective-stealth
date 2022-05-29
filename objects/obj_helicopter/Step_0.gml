/// @description Insert description here
// You can write your code in this editor
if (y < 0) {
	//go to next level
}

//if (!done) {
//	if (obj_breifcase.collected) {
//		go_right = true;
//		done = true;
//	}
//}

if (go_right) {
	x += 10;
	if (alarm[0] == -1) {
		alarm[0] = 30;
	}
}

if (go_up) {
	go_right = false;
	y -= 10;
	if (alarm[1] == -1) {
		alarm[1] = 120;
	}
}