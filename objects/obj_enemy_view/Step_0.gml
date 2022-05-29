/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(enemy_owner)) {
	instance_destroy();
}

if (enemy_owner.hspd < 0) {
	x = enemy_owner.x - 5;
	image_xscale = -1;
}

else if (enemy_owner.hspd > 0) {
	x = enemy_owner.x + 5;
	image_xscale = 1;
}

y = enemy_owner.y - 15;

if (player_in_view >= player_caught_buffer) {
	if (!play_caught) {
		audio_play_sound(snd_caught, 10, false);
		play_caught = true;
		obj_player.can_move = false;
		
		obj_enemy.can_move = false;
		
		with (enemy_owner) {
			instance_create_layer(x, y - 60, "Instances", alarmed);
		}
		
		if (alarm[0] == -1) {
			alarm[0] = 60;
		}
	}
}

if (player_in_view > player_caught_buffer) {
	player_in_view = 0;
	screen_shake(7, 60);
}