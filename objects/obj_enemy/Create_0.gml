/// @description Insert description here
// You can write your code in this editor
enemy_spd = 3;

can_move = true;

image_speed = 1;

hspd = 0;
vspd = 0;
hspd = enemy_spd;
grav = 0.5;

enemy_view = instance_create_layer(x, y, "Instances", obj_enemy_view);

confused = obj_confused;
alarmed = obj_alarmed;

is_confused = false;
is_alarmed = false;

confused_inst_created = false;
alarmed_inst_created = false;

alert_x = 0;

dead = false;

has_been_confused = false;

run_confused_code = false;

checkpoint_x = x;