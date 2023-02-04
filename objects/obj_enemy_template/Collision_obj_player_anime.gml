/// @description Insert description here
// You can write your code in this editor



//AO COLIDIR COM O INIMIGO
if(!hit1 && !obj_player_anime.isInvensible && (animations.atk1_left == sprite_index || animations.atk1_right == sprite_index)){
	hit1 = true;
	global.animtemp = obj_player_anime.sprite_index;
	applyForceAtObj(obj_player_anime, obj_player_anime.x_direction * -1, -1, 5, 0.5, 3,0.2,0);
	obj_player_anime.sprite_index = props().pAnim.animHurt;
	obj_player_anime.damageTimeCounter = 0;
	obj_player_anime.isInvensible = true;
	props()._hp -= 1;
}	

if(!obj_player_anime.isInvensible )
	obj_player_anime.x += obj_player_anime.horizontal_speed * (obj_player_anime.x_direction * -1);

