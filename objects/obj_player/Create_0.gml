/// @description Insert description here
// You can write your code in this editor
grav = 1.3;

played_sound = false;

hspd = 0;
vspd = 0;
jump_spd = 20;
player_spd = 8;
player_dangle_spd = 4;
player_crouch_spd = player_dangle_spd + 1;

able_to_grapple = true;

can_move = true;

alligned = false;

enum pstates {
	normal,
	grappling,
	dangling,
	falling
}

pstate = pstates.normal;
enemy_killed = 0;

in_helicopter = false;

has_distraction = false;

player_distraction = obj_player_distraction;


//arrow (player distraction)
player_distraction_arrow = instance_nearest(player_distraction.x, player_distraction.y, obj_arrow);