/// @description Insert description here
// You can write your code in this editor

x = obj_player_anime.x;
y = obj_player_anime.y;

depth = obj_player_anime.depth - 1;
image_index = obj_player_anime.image_index;

image_xscale = obj_player_anime.image_xscale;
image_yscale = obj_player_anime.image_yscale;

switch(obj_player_anime.sprite_index){
	case animations_player.animIdle: sprite_index =  animations_weapon.animIdle ;break;
	case animations_player.animRun: sprite_index =  animations_weapon.animRun ;break;
	case animations_player.animRunAtk1: sprite_index =  animations_weapon.animRunAtk1 ;break;
	case animations_player.animRunAtk2: sprite_index =  animations_weapon.animRunAtk2 ;break;
	case animations_player.animImpulseAtk: sprite_index =  animations_weapon.animImpulseAtk ;break;
	case animations_player.animTurn: sprite_index =  animations_weapon.animTurn ;break;
	case animations_player.animCrouch: sprite_index =  animations_weapon.animCrouch ;break;
	case animations_player.animJump: sprite_index =  animations_weapon.animJump ;break;
	case animations_player.animFall: sprite_index =  animations_weapon.animFall ;break;
	case animations_player.animRoll: sprite_index =  animations_weapon.animRoll ;break;
	case animations_player.animAtk1: sprite_index =  animations_weapon.animAtk1 ;break;
	case animations_player.animAtk2: sprite_index =  animations_weapon.animAtk2 ;break;
	case animations_player.animAtk3: sprite_index =  animations_weapon.animAtk3 ;break;
	case animations_player.animTopAtk: sprite_index =  animations_weapon.animTopAtk ;break;
	case animations_player.animJumpAtkSide: sprite_index =  animations_weapon.animJumpAtkSide ;break;
	case animations_player.animJumpAtkTop: sprite_index =  animations_weapon.animJumpAtkTop ;break;
	case animations_player.animJumpAtkBot: sprite_index =  animations_weapon.animJumpAtkBot ;break;
	case animations_player.animCrouchAtk: sprite_index =  animations_weapon.animCrouchAtk ;break;
	case animations_player.animDefense: sprite_index =  animations_weapon.animDefense ;break;
	case animations_player.animHurt: sprite_index =  animations_weapon.animHurt ;break;
	case animations_player.animDeath: sprite_index =  animations_weapon.animDeath ;break;
}