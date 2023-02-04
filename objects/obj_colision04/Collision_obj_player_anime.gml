/// @description Insert description here
// You can write your code in this editor

//AO COLIDIR COM O INIMIGO
if(!obj_player_anime.isInvensible){
	global.animtemp = obj_player_anime.sprite_index;
	applyForceAtObj(obj_player_anime, obj_player_anime.x_direction * -1, 0, 10, 0.2, 3,0,0);
	obj_player_anime.sprite_index = props().pAnim.animHurt;
	obj_player_anime.damageTimeCounter = 0;
	obj_player_anime.isInvensible = true;
	props()._hp -= 1;
}


