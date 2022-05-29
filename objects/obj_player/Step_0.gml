/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
key_throw = keyboard_check_pressed(vk_enter);
key_grapple = keyboard_check_pressed(vk_shift);
key_interact = keyboard_check_pressed(ord("E")) || (keyboard_check_pressed(ord("F")));


if (place_meeting(x, y, obj_helicopter)) {
	in_helicopter = true;
	x = obj_helicopter.x;
	y = obj_helicopter.y;
	
	visible = false;
	
	if (!played_sound) {
		audio_play_sound(snd_helicopter_come, 10, false);
		played_sound = true;
	}
	
	with (obj_helicopter) {
		go_up = true;
	}
}

else {
//Jumping/gravity / Calculate movement
	if (can_move) {
		if (pstate != pstates.grappling) {
			var move = key_right - key_left;

			if (keyboard_check(vk_control)) {
				hspd = move * player_crouch_spd;
			}

			else {
				hspd = move * player_spd;
			}
		}

		vspd = vspd + grav;

		if (place_meeting(x, y + 1, obj_wall)) && ((key_jump)) {
			vspd = -jump_spd;
		}
	}

	//Horizontal player-wall collision
	if (place_meeting(x + hspd, y, obj_wall)) {
		while (!place_meeting(x + sign(hspd), y, obj_wall)) {
			x = x + sign(hspd);
		}
	
		hspd = 0;
	}

	//Horizontal player-door collision
	if (place_meeting(x + hspd, y, obj_door)) {
		while (!place_meeting(x + sign(hspd), y, obj_door)) {
			x = x + sign(hspd);
		}
	
		hspd = 0;
	}

	x = x + hspd;

	//Vertical player-wall collision
	if (place_meeting(x, y + vspd, obj_wall)) {
		while (!place_meeting(x, y + sign(vspd), obj_wall)) {
			y = y + sign(vspd);
		}
	
		vspd = 0;
	}

	y = y + vspd;

	switch (pstate) {
		case (pstates.normal) :
			scr_player_normal();
		break;
	
		case (pstates.grappling) :
			scr_player_grappling();
		break;
	
		case (pstates.dangling) :
			scr_player_dangling();
		break;
	
		case (pstates.falling) :
			scr_player_falling();
		break;
	}

	//Animations
	if (pstate != pstates.dangling) {
		if (hspd < 0) {
			sprite_index = spr_player_walk;
			image_xscale = -1;
		}

		else if (hspd > 0) {
			sprite_index = spr_player_walk;
			image_xscale = 1;
		}

		if (hspd == 0) {
			sprite_index = spr_player;
		}
	}

	else {
		if (hspd < 0) {
			image_xscale = -1;
		}

		else if (hspd > 0) {
			image_xscale = 1;
		}
		sprite_index = spr_player_dangle;
	}

	//pickup distraction
	
	if (!has_distraction) {
		if (distance_to_object(player_distraction) < 32) && (!collision_line(x, y, player_distraction.x, player_distraction.y, obj_wall, false, false)) && (!collision_line(x, y, player_distraction.x, player_distraction.y, obj_door, false, false)){
			if (key_interact) {
				has_distraction = true;
				audio_play_sound(pickup_distraction, 12, false);
			}
		}
	}

	if (key_throw) {
		if (has_distraction) {
			with (player_distraction) {
				vspd = -15;
				hspd = 10 * obj_player.image_xscale;
				from_throw = true;
				obj_player.has_distraction = false;
			}
		}
	}
}

//elevator triggers
if (distance_to_object(obj_elevator_trigger1) < 32) {
	with (obj_elevator_trigger1) {
		ticked = true;
	}
}

if (distance_to_object(obj_elevator_trigger2) < 32) {
	with (obj_elevator_trigger2) {
		ticked = true;
	}
}

if (distance_to_object(obj_elevator_trigger3) < 32) {
	with (obj_elevator_trigger3) {
		ticked = true;
	}
}

if (distance_to_object(obj_elevator_trigger4) < 32) {
	with (obj_elevator_trigger4) {
		ticked = true;
	}
}