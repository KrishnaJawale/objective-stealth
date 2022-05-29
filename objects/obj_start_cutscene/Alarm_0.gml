/// @description Insert description here
// You can write your code in this editor
if (shake) {
	with (obj_enemy_menu) {
		sprite_index = spr_enemy_menu_angry;
		image_xscale = 0.63;
		image_yscale = 0.65;
		screen_shake(6, 150);
	}
	
	with (obj_player_menu) {
		sprite_index = spr_player_menu_happy;
	}
}

if (sentence == dialogue[1]) {
	if (i == 3) {
		draw_set_colour(c_red);
	}
	
	else {
		draw_set_colour(c_white);
	}
}

dialouge_drawn += string_char_at(sentence, i);
i += 1;

if ((i - 1) != string_length(sentence)) {
	alarm[0] = 1;
}

else {
	go_to_next_sentence = true;
} 