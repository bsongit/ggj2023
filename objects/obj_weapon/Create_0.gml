/// @description Insert description here
// You can write your code in this editor


title = "Calças";
desc = "As calças de um guerreiro ludi.";
equipType = "weapon";
funcAction = function (){};
icon = spr_weapon;
size = "mid";

animations_player = {
	animIdle : spr_idle_w_weapon,
	animRun : spr_run_w1,
	animRunAtk1: spr_run_atk1,
	animRunAtk2: spr_run_atk2,
	animImpulseAtk: spr_impulse_atk,
	animTurn : spr_turn,
	animCrouch : spr_crouch,
	animJump : spr_jump,
	animFall : spr_fall,
	animRoll : spr_roll,
	animAtk1 : spr_atk1_n_weapon,
	animAtk2 : spr_atk2_n_weapon,
	animAtk3 : spr_atk3_n_weapon,
	animTopAtk: spr_topatk_n_weapon, 
	animJumpAtkSide : spr_jump_atak_n_weapon,
	animJumpAtkTop : spr_jump_ataktop_n_weapon,
	animJumpAtkBot : spr_jump_atakbot_n_weapon,
	animCrouchAtk : spr_crouch_atk_n_weapon,
	animDefense : spr_defense,
	animHurt : spr_hurt,
	animDeath  : spr_death
}

animations_weapon = {
		animIdle : spr_ns_idle,
		animRun : spr_ns_run,
		animRunAtk1: spr_ns_run_atk1,
		animRunAtk2: spr_ns_run_atk2,
		animImpulseAtk: spr_ns_impulse_atk,
		animTurn :  spr_null,
		animCrouch : spr_ns_crouch,
		animJump : spr_ns_jump,
		animFall : spr_ns_fall,
		animRoll : spr_null,
		animAtk1  : spr_ns_atk1,
		animAtk2  : spr_ns_atk2,
		animAtk3  : spr_ns_atk3,
		animTopAtk : spr_ns_jump_atktop,
		animJumpAtkSide  : spr_ns_jump_atkside,
		animJumpAtkTop  : spr_ns_jump_atktop,
		animJumpAtkBot  : spr_ns_jump_atkbot,
		animCrouchAtk: spr_null,
		animDefense: spr_ns_defense,
		animHurt  : spr_null,
		animDeath  : spr_null
}


sprite_index =  spr_ns_idle;