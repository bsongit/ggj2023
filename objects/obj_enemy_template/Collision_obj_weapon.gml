/// @description Insert description here
// You can write your code in this editor

if((obj_player_anime.sprite_index == props().pAnim.animTopAtk|| obj_player_anime.sprite_index == props().pAnim.animJumpAtkTop || obj_player_anime.sprite_index == props().pAnim.animJumpAtkBot )  && !obj_player_anime.hit1){
	obj_player_anime.hit1 = true;
	lastAnimation = sprite_index;
	if(x_direction > 0){
		sprite_index = animations.hurt_right
	}
	else{
		sprite_index = animations.hurt_left;
	}
	HP -= 1;
	if(HP <= 0){
		if(x_direction > 0)
			sprite_index = animations.death_right;
		else {
			sprite_index = animations.death_left;
		}
		image_index = 0;
		enemy_state = "dead";
	}
}

if((obj_player_anime.sprite_index == props().pAnim.animRunAtk1 || obj_player_anime.sprite_index == props().pAnim.animAtk1 || obj_player_anime.sprite_index == props().pAnim.animJumpAtkSide ) && !obj_player_anime.hit1){
	lastAnimation = sprite_index;
	obj_player_anime.hit1 = true;
	if(x_direction > 0){
		sprite_index = animations.hurt_right
		applyForceAtObj(self, obj_player_anime.x_direction, 0, 10, 0.2, 3,0,0);
	}
	else{
		sprite_index = animations.hurt_left;
		applyForceAtObj(self, obj_player_anime.x_direction , 0, 10, 0.2, 3,0,0);
	}
	HP -= 1;
	if(HP <= 0){
		if(x_direction > 0)
			sprite_index = animations.death_right;
		else {
			sprite_index = animations.death_left;
		}
		image_index = 0;
		enemy_state = "dead";
	}
}
else if((obj_player_anime.sprite_index == props().pAnim.animAtk2 || obj_player_anime.sprite_index == props().pAnim.animRunAtk2) && !obj_player_anime.hit2 ){
	obj_player_anime.hit2 = true;
	if(x_direction > 0){
		lastAnimation = animations.idle_right;
		sprite_index = animations.hurt_right
		applyForceAtObj(self, obj_player_anime.x_direction, 0, 10, 0.2, 3,0,0);
	}
	else{
		lastAnimation = animations.idle_left;
		sprite_index = animations.hurt_left;
		applyForceAtObj(self, obj_player_anime.x_direction , 0, 10, 0.2, 3,0,0);
	}
	HP -= 1;
	if(HP <= 0){
		if(x_direction > 0)
			sprite_index = animations.death_right;
		else {
			sprite_index = animations.death_left;
		}
		image_index = 0;
		enemy_state = "dead";
	}
}
else if(obj_player_anime.sprite_index == props().pAnim.animAtk3 && !obj_player_anime.hit3 ){
	obj_player_anime.hit3 = true;
	if(x_direction > 0){
		lastAnimation = animations.idle_right;
		sprite_index = animations.hurt_right
		applyForceAtObj(self, obj_player_anime.x_direction, 0, 30, 0.2, 3,0,0);
	}
	else{
		lastAnimation = animations.idle_left;
		sprite_index = animations.hurt_left;
		applyForceAtObj(self, obj_player_anime.x_direction , 0, 30, 0.2, 3,0,0);
	}
	HP -= 2;
	if(HP <= 0){
		if(x_direction > 0)
			sprite_index = animations.death_right;
		else {
			sprite_index = animations.death_left;
		}
		image_index = 0;
		enemy_state = "dead";
	}
}




