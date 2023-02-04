/// @description Insert description here
// You can write your code in this editor

if(isMirroed)
	image_xscale = x_direction;

depth = obj_player_anime.depth + 1;
stepsCounter++;

if((sprite_index != animations.jump_left && sprite_index != animations.jump_right && sprite_index != animations.fly_left && sprite_index != animations.fly_right) && !place_meeting(x,y + minDistanceOfTheGround , obj_colision01)){
	v_speed += acceleration;
	if(v_speed > max_v_speed )
		v_speed = max_v_speed ;
	y += v_speed;
}


if(sprite_index == animations.hurt_left || sprite_index == animations.hurt_right){
	h_speed = 0;
	if(image_alpha == 0){
		image_alpha = 1;
	}
	else {
		image_alpha = 0;
	}
	
	if(floor(image_index) >= (sprite_get_number(sprite_index) -1)){
		sprite_index = lastAnimation;
		image_alpha = 1;
	}
}
else {
	image_alpha = 1;	
	if(enemy_state == "patrol"){
	onPatrol(self);
	}
	else if(enemy_state == "alert"){
		onAlert(self);
	}
	else if(enemy_state == "get closer"){
		onGetCloser(self);
	}
	else if(enemy_state == "scape"){
		onPatrol(self);
	}
	else if(enemy_state == "guard"){
		onPatrol(self);
	}
	else if(enemy_state == "attack"){
		onAttack(self);
	}
	else if(enemy_state == "shoot"){
		onPatrol(self);
	}
	else if(enemy_state == "dead"){
		onDead(self);
	}
}



