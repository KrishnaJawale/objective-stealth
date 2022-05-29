/// @description Insert description here
// You can write your code in this editor
if (index == 8) {
	with (obj_player_menu) {
		sprite_index = spr_player_menu_happy;
		image_xscale = 0.63;
		image_yscale = 0.68;
		screen_shake(3, 60);
	}
}

else if (index == 9) {
	with (obj_player_menu) {
		sprite_index = spr_player_menu_happy_1;
		image_xscale = 0.63;
		image_yscale = 0.68;
		screen_shake(7, 190);
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