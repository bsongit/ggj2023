// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function initGamepad(){
		global.gamepadIndex = -1;
		for (var i = 0; i < gamepad_get_device_count(); i++){
				if(gamepad_is_connected(i))
					global.gamepadIndex = i;
		}
}

function checkInputs(){
	initGamepad();
	global.button_left = keyboard_check(ord("A")) || gamepad_button_check(global.gamepadIndex,gp_padl);
	global.button_left_pressed = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(global.gamepadIndex,gp_padl);
	global.button_left_released = keyboard_check_released(ord("A")) || gamepad_button_check_released(global.gamepadIndex,gp_padl);

	global.button_right = keyboard_check(ord("D")) || gamepad_button_check(global.gamepadIndex,gp_padr);
	global.button_right_pressed = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(global.gamepadIndex,gp_padr);
	global.button_right_released = keyboard_check_released(ord("D")) || gamepad_button_check_released(global.gamepadIndex,gp_padr);

	global.button_bottom = keyboard_check(ord("S")) || gamepad_button_check(global.gamepadIndex,gp_padd);
	global.button_bottom_pressed = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(global.gamepadIndex,gp_padd);
	global.button_bottom_released = keyboard_check_released(ord("S")) || gamepad_button_check_released(global.gamepadIndex,gp_padd);

	global.button_top = keyboard_check(ord("W")) || gamepad_button_check(global.gamepadIndex,gp_padu);
	global.button_top_pressed = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(global.gamepadIndex,gp_padu);
	global.button_top_pressed = keyboard_check_released(ord("W")) || gamepad_button_check_released(global.gamepadIndex,gp_padu);

	global.button_A = keyboard_check(vk_space) || gamepad_button_check(global.gamepadIndex,gp_face1);
	global.button_A_pressed = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(global.gamepadIndex,gp_face1);
	global.button_A_released = keyboard_check_released(vk_space) || gamepad_button_check_released(global.gamepadIndex,gp_face1);

	global.button_S = keyboard_check(ord("Q")) || gamepad_button_check(global.gamepadIndex,gp_face2);
	global.button_S_pressed = keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(global.gamepadIndex,gp_face2);
	global.button_S_released = keyboard_check_released(ord("Q")) || gamepad_button_check_released(global.gamepadIndex,gp_face2);

	global.button_D = keyboard_check(ord("I")) || gamepad_button_check(global.gamepadIndex,gp_face3);
	global.button_D_pressed = keyboard_check_pressed(ord("I")) || gamepad_button_check_pressed(global.gamepadIndex,gp_face3);
	global.button_D_released = keyboard_check_released(ord("I")) || gamepad_button_check_released(global.gamepadIndex,gp_face3);

	global.button_W = keyboard_check(ord("J")) || gamepad_button_check(global.gamepadIndex,gp_face4);
	global.button_W_pressed = keyboard_check_pressed(ord("J")) || gamepad_button_check_pressed(global.gamepadIndex,gp_face4);
	global.button_W_released = keyboard_check_released(ord("J")) || gamepad_button_check_released(global.gamepadIndex,gp_face4);
	
	global.button_Debbug_pressed = keyboard_check_pressed(ord("3"));
	global.button_Enter_pressed = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(global.gamepadIndex,gp_start);
	global.button_R1_pressed = keyboard_check(ord("2")) || gamepad_button_check_pressed(global.gamepadIndex,gp_shoulderr);
	global.button_L1_pressed = keyboard_check(ord("1")) || gamepad_button_check_pressed(global.gamepadIndex,gp_shoulderl);
}