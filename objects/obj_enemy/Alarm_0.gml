/// @description Insert description here
// You can write your code in this editor
has_been_confused = true;

with (confused_inst) {
	instance_destroy();
	has_been_confused = false;
}

is_confused = false;

alert_inst = instance_create_layer(x, y, "Instances", alarmed);