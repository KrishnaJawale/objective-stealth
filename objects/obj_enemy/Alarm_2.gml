/// @description Insert description here
// You can write your code in this editor
if (instance_exists(alert_inst)) {
	with (alert_inst) {
		instance_destroy();
	}
}

//
enemy_spd = 3;

if (image_xscale == 1) {
	hspd = enemy_spd;
}

else if (image_xscale == -1) {
	hspd = -enemy_spd;
}

has_been_confused = false;