//patrulhar -> alerta -> perseguir -> atacar
//patrulhar -> alerta -> fugir
//patrulhar -> alerta -> bloquear ou enfrentar
//patrulhar -> alerta -> se posicionar -> atacar - bloquear ou defender
//patrulhar -> alerta -> se posicionar -> atirar - zombar
//patrulhar -> alerta -> atirar -> zombar

//patrulhar -> perseguir -> atacar
//patrulhar -> fugir
//patrulhar -> bloquear ou enfrentar
//patrulhar -> se posicionar -> atacar - bloquear ou defender
//patrulhar -> se posicionar -> atirar - zombar
//patrulhar -> atirar -> zombar

//patrulhar -> apanhar -> fujir
//patrulhar -> apanhar ->  bloquear ou enfrentar
//patrulhar -> apanhar -> se posicionar -> atacar
//patrulhar -> apanhar -> se posicionar -> atirar



function onPatrol(obj_enemy){

	if(obj_enemy.sprite_index == obj_enemy.animations.idle_left || obj_enemy.sprite_index ==  obj_enemy.animations.idle_right){
		if(obj_enemy.stepsCounter > obj_enemy.stepsToChangeState/2){
			obj_enemy.stepsCounter = 0;
			obj_enemy.h_speed = 0;
			obj_enemy.x_direction = obj_enemy.x_direction * (-1);
			obj_enemy.wallLimiter = false;
			if(obj_enemy.x_direction > 0)
				obj_enemy.sprite_index = obj_enemy.animations.run_right;
			else {
				obj_enemy.sprite_index = obj_enemy.animations.run_left;
			}
		}
	}
	else if(obj_enemy.sprite_index ==  obj_enemy.animations.run_left || obj_enemy.sprite_index ==  obj_enemy.animations.run_right){
		if(obj_enemy.stepsCounter > obj_enemy.stepsToChangeState){
			obj_enemy.stepsCounter = 0;
			obj_enemy.h_speed = 0;
			if(obj_enemy.x_direction > 0)
				if(obj_enemy.itsFly)
					obj_enemy.sprite_index = obj_enemy.animations.fly_right;
				else{
					obj_enemy.sprite_index = obj_enemy.animations.idle_right;
				}
			else {
				if(obj_enemy.itsFly)
					obj_enemy.sprite_index = obj_enemy.animations.fly_left;
				else{
					obj_enemy.sprite_index = obj_enemy.animations.idle_left;
				}
			}
		}
		obj_enemy.h_speed += obj_enemy.acceleration;
		if(obj_enemy.h_speed > obj_enemy.max_h_speed){
			obj_enemy.h_speed = obj_enemy.max_h_speed;
		}
		if(!obj_enemy.wallLimiter)
			obj_enemy.x +=  obj_enemy.h_speed  * obj_enemy.x_direction;
	}
	
	else if(obj_enemy.sprite_index ==  obj_enemy.animations.fly_left || obj_enemy.sprite_index ==  obj_enemy.animations.fly_right){
		if(obj_enemy.stepsCounter > obj_enemy.stepsToChangeState * 0.6){
			obj_enemy.stepsCounter = 0;
			obj_enemy.h_speed = 0;
			if(obj_enemy.x_direction > 0)
				obj_enemy.sprite_index = obj_enemy.animations.idle_right;
			else {
				obj_enemy.sprite_index = obj_enemy.animations.idle_left;
			}
		}
		obj_enemy.h_speed += obj_enemy.acceleration;
		obj_enemy.v_speed += obj_enemy.acceleration/2;
		if(obj_enemy.h_speed > obj_enemy.max_h_speed){
			obj_enemy.h_speed = obj_enemy.max_h_speed;
		}
		if(obj_enemy.v_speed > obj_enemy.max_v_speed){
			obj_enemy.v_speed = obj_enemy.max_v_speed;
		}
		
		if(!obj_enemy.wallLimiter)
			obj_enemy.x +=  obj_enemy.h_speed  * obj_enemy.x_direction;
		obj_enemy.y -=  obj_enemy.v_speed;
	}
	
	

	if(isPlayerClose(obj_enemy)){
		obj_enemy.hit1 = false;
		obj_enemy.enemy_state = "attack";
		obj_enemy.stepsCounter = 0;
		obj_enemy.h_speed = 0;
		if(obj_enemy.x_direction > 0)
			obj_enemy.sprite_index = obj_enemy.animations.atk1_right;
		else {
			obj_enemy.sprite_index = obj_enemy.animations.atk1_left;
		}
	}
	
	if(obj_enemy.itsFly && floor(obj_enemy.image_index) >= (sprite_get_number(obj_enemy.sprite_index) -2)){
		if(obj_enemy.x_direction > 0)
			obj_enemy.visionColisionInstance.image_angle = 45;
		else {
			obj_enemy.visionColisionInstance.image_angle = 315;
		}
	}
	else{
		obj_enemy.visionColisionInstance.image_angle = 0;
	}
}

function onAlert(obj_enemy){

	if(obj_enemy.x_direction > 0)
		obj_enemy.sprite_index = obj_enemy.animations.alert_right;
	else {
		obj_enemy.sprite_index = obj_enemy.animations.alert_left;
	}
	if(obj_enemy.stepsCounter > obj_enemy.stepsToChangeState/3){
		obj_enemy.enemy_state = "get closer";
		obj_enemy.stepsCounter = 0;
		obj_enemy.h_speed = 0;
		if(obj_enemy.x_direction > 0)
			obj_enemy.sprite_index = obj_enemy.animations.run_right;
		else {
			obj_enemy.sprite_index = obj_enemy.animations.run_left;
		}
	}
	else if(isPlayerClose(obj_enemy)){
		obj_enemy.hit1 = false;
		obj_enemy.enemy_state = "attack";
		obj_enemy.stepsCounter = 0;
		obj_enemy.h_speed = 0;
	}
}

function onGetCloser(obj_enemy){
	obj_enemy.h_speed += obj_enemy.acceleration;
	if(obj_enemy.h_speed > obj_enemy.max_h_speed){
		obj_enemy.h_speed = obj_enemy.max_h_speed;
	}
	if(!obj_enemy.wallLimiter)
		obj_enemy.x +=  obj_enemy.h_speed  * obj_enemy.x_direction;
	
	if(isPlayerClose(obj_enemy)){
		obj_enemy.hit1 = false;
		obj_enemy.enemy_state = "attack";
		obj_enemy.stepsCounter = 0;
		obj_enemy.h_speed = 0;
	}
	
	if(obj_enemy.stepsCounter > obj_enemy.stepsToChangeState * 5){
		obj_enemy.enemy_state = "patrol";
		obj_enemy.stepsCounter = 0;
		obj_enemy.h_speed = 0;
	}
	else if(obj_enemy.stepsCounter > obj_enemy.stepsToChangeState){
		if(obj_enemy.x_direction < 0 && obj_enemy.x < obj_player_anime.x){
			obj_enemy.enemy_state = "patrol";
			obj_enemy.stepsCounter = 0;
			obj_enemy.h_speed = 0;
			obj_enemy.sprite_index =  obj_enemy.animations.idle_right;
		}
		else if(obj_enemy.x_direction > 0 && obj_enemy.x > obj_player_anime.x){
			obj_enemy.enemy_state = "patrol";
			obj_enemy.stepsCounter = 0;
			obj_enemy.h_speed = 0;
			obj_enemy.sprite_index =  obj_enemy.animations.idle_left;
		}
	}
	
	if(obj_enemy.itsFly && (obj_enemy.visionColisionInstance.image_angle == 45 ||  obj_enemy.visionColisionInstance.image_angle == 315)){
		if(obj_enemy.x_direction > 0)
				obj_enemy.sprite_index = obj_enemy.animations.fly_right;
		else {
				obj_enemy.sprite_index = obj_enemy.animations.fly_left;
		}
		if(obj_enemy.stepsCounter > obj_enemy.stepsToChangeState){
			obj_enemy.stepsCounter = 0;
			obj_enemy.h_speed = 0;
			obj_enemy.enemy_state = "patrol";
			
		}
		obj_enemy.v_speed += obj_enemy.acceleration/2;
		if(obj_enemy.v_speed > obj_enemy.max_v_speed){
			obj_enemy.v_speed = obj_enemy.max_v_speed;
		}
		obj_enemy.y -=  obj_enemy.v_speed;
		
	}
		
}

function onAttack(obj_enemy){
	
	if(obj_enemy.stepsCounter > obj_enemy.stepsToChangeState / 5){
		obj_enemy.stepsCounter = 0;
		if(obj_enemy.x_direction > 0){
				obj_enemy.depth = obj_player_anime.depth - 1;
				obj_enemy.sprite_index = obj_enemy.animations.atk1_right;
			}
		else {
				obj_enemy.depth = obj_player_anime.depth - 1;
				obj_enemy.sprite_index = obj_enemy.animations.atk1_left;
		}
	}

	if(floor(obj_enemy.image_index) >= (sprite_get_number(obj_enemy.sprite_index) -1)){
		if(obj_enemy.x_direction > 0)
			obj_enemy.sprite_index = obj_enemy.animations.idle_right;
		else {
			obj_enemy.sprite_index = obj_enemy.animations.idle_left;
		}
		if(!isPlayerClose(obj_enemy)){
			obj_enemy.enemy_state = "patrol";
			obj_enemy.stepsCounter = 0;
			obj_enemy.h_speed = 0;
		}
	}
}

function onDead(obj_enemy){

	if(floor(obj_enemy.image_index) >= (sprite_get_number(obj_enemy.sprite_index) -1)){
		instance_destroy(obj_enemy.enemyRoofInstance)
		instance_destroy(obj_enemy);
	}
}



function isPlayerClose(obj_enemy){
 return (place_meeting(
	obj_enemy.x + (obj_enemy.sprite_width/10), 
	obj_enemy.y, 
	obj_player_anime)
	)
}