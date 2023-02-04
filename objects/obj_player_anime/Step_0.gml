checkInputs();
timeStepCounter++;
global.current_time += (floor(current_time/1000) - global.current_time);
if(!pauseTime && timer > 0 && timeStepCounter > timeTaxUpdate ){
	timer -=1;
	timeStepCounter = 0;
}

if(damageTimeCounter >= maxDamageTime && props().pAnim.animRoll == sprite_index){
	isInvensible = true;
}
else if (damageTimeCounter >= maxDamageTime && props().pAnim.animRoll != sprite_index){
	isInvensible = false;
}

//if(global.button_Debbug_pressed){
//	if(debuggerHudInstance == 0)
//		debuggerHudInstance = instance_create_layer(x,y,"HUD",obj_debugger_hud);
//	else {
//		instance_destroy(debuggerHudInstance);
//		debuggerHudInstance = 0;
//	}
//}

//if(global.button_Enter_pressed){
//	if(!freezeMode){
//		freezeMode = true;
//	}
//	else{
//		freezeMode = false;
//	}
//}
if(animImpulseAtkCounter == 0 && (global.button_right_pressed || global.button_left_pressed)){
	animImpulseAtkCounter++;
	animImpulseAtkTimer = global.current_time;
}
else if((global.current_time - animImpulseAtkTimer) <= 1 && animImpulseAtkCounter == 1 && (global.button_right_pressed || global.button_left_pressed)){
	animImpulseAtkCounter++;
}
else if ((global.current_time - animImpulseAtkTimer) > 1 ){
		animImpulseAtkCounter = 0;
}

if(!freezeMode){	
	
	switch(player_state){
		case "is on the floor": isOnTheFloor(); break;
		case "is jumping": isJumping(); break;
		case "is falling": isFalling(); break;
		case "is dragging on the wall": isDraginOnTheWall(); break;
		case "is dead": isDead(); break;
		case "is hud opened": show_debug_message("em construçao"); break;
	}
	
	if(player_state == "is on the floor" && sprite_index != props().pAnim.animTurn && sprite_index != props().pAnim.animHurt && sprite_index != props().pAnim.animRoll  && sprite_index != props().pAnim.animAtk1  && sprite_index != props().pAnim.animAtk2 && sprite_index != props().pAnim.animAtk3 && sprite_index != props().pAnim.animTopAtk && sprite_index != props().pAnim.animImpulseAtk && sprite_index != props().pAnim.animRunAtk2 && sprite_index != props().pAnim.animRunAtk1){
		if (!global.button_bottom && !global.button_left && !global.button_right && !global.button_D_pressed) {
			global.animtemp = props().pAnim.animIdle;
			setAnimAtObj(obj_player_anime,props().pAnim.animIdle,-1,function (){});
		}
		else if(global.button_bottom){
			global.animtemp = props().pAnim.animCrouch;
			setAnimAtObj(obj_player_anime,props().pAnim.animCrouch,-1,function (){});
		}
		//else if(global.button_S_pressed && sprite_index != props().pAnim.animIdle){
		//	global.animtemp = props().pAnim.animRun;
		//	roll_direction = image_xscale;
		//	applyForceAtObj(obj_player_anime, x_direction,0,25,3,3,0,0);
		//	setAnimAtObj(obj_player_anime,props().pAnim.animRoll,7,function (){
		//		sprite_index = global.animtemp;
		//	});
		//}
		
		//else if(global.button_D_pressed && (sprite_index == props().pAnim.animRun) && (global.button_left || global.button_right)){
		//	hit1 = false;
		//	hit2 = false;
		//	hit3 = false;
		//	global.animtemp = props().pAnim.animRun;
		//	setAnimAtObj(obj_player_anime,props().pAnim.animRunAtk1,6,function (){
		//		if(global.button_D_pressed || global.button_D_released){
		//			setAnimAtObj(obj_player_anime,props().pAnim.animRunAtk2,6,function (){})
		//		}
		//	});
		//}
		
		
		//else if(!global.button_top && global.button_D_pressed && sprite_index != props().pAnim.animAtk1 && sprite_index != props().pAnim.animRun){
		//	hit1 = false;
		//	hit2 = false;
		//	hit3 = false;
		//	global.animtemp = props().pAnim.animIdle;
		//	applyForceAtObj(obj_player_anime, x_direction,0,30,0.006,2,0,0);
		//	setAnimAtObj(obj_player_anime,props().pAnim.animAtk1,6,function (){
		//		if(global.button_D_pressed){
		//			applyForceAtObj(obj_player_anime, x_direction,0,30,0.006,2,0,0);
		//			setAnimAtObj(obj_player_anime,props().pAnim.animAtk2,6,function (){
		//				if(global.button_D_pressed){
		//					applyForceAtObj(obj_player_anime, x_direction,0,30,0.006,2,0,0);
		//					setAnimAtObj(obj_player_anime,props().pAnim.animAtk3,-1,function (){})
		//				}
		//			})
		//		}
		//	});
		//}
		//else if( animImpulseAtkCounter == 2 && (global.button_left || global.button_right) && global.button_D_pressed){
		//	global.animtemp = props().pAnim.animRun;
		//	applyForceAtObj(obj_player_anime, x_direction,0,40,2.5,2.5,0,0);
		//	setAnimAtObj(obj_player_anime,props().pAnim.animImpulseAtk,6,function (){
		//		horizontal_speed = 0;
		//	});
		//}
		//else if(global.button_top && global.button_D_pressed && sprite_index != props().pAnim.animTopAtk){
		//	hit1 = false;
		//	hit2 = false;
		//	hit3 = false;
		//	global.animtemp = props().pAnim.animIdle;
		//	setAnimAtObj(obj_player_anime,props().pAnim.animTopAtk,6,function (){});
		//}
		else if((global.button_left && image_xscale > 0 ) && !global.button_right || (global.button_right && image_xscale < 0) && !global.button_left){
			setAnimAtObj(obj_player_anime,props().pAnim.animTurn,2,function (){
				if(global.button_right ){
					x_direction = 1;
					if(image_xscale < 0)
						image_xscale = image_xscale * -1;
				}
				else if(global.button_left ){
					x_direction = -1;
					if(image_xscale > 0)
						image_xscale = image_xscale * -1;
				}

				sprite_index = props().pAnim.animRun;
			});
		}
		else if (global.button_left && !global.button_right || global.button_right && !global.button_left ){
			global.animtemp = props().pAnim.animRun;
			setAnimAtObj(obj_player_anime,props().pAnim.animRun,-1,function (){});
		}
		else {
			global.animtemp = props().pAnim.animIdle;
			setAnimAtObj(obj_player_anime,props().pAnim.animIdle,-1,function (){});
		}
	}

	else if(player_state == "is jumping" && sprite_index != props().pAnim.animJumpAtkSide && sprite_index != props().pAnim.animJumpAtkBot && sprite_index != props().pAnim.animJumpAtkTop){
		//if(global.button_D_pressed && !global.button_bottom && !global.button_top ){
		//	hit1 = false;
		//	hit2 = false;
		//	hit3 = false;
		//	image_xscale = x_direction;
		//	global.animtemp = props().pAnim.animFall;
		//	setAnimAtObj(obj_player_anime,props().pAnim.animJumpAtkSide, -1 ,function (){});
		//}
		//else if(global.button_D_pressed && global.button_bottom && !global.button_top){
		//	hit1 = false;
		//	hit2 = false;
		//	hit3 = false;
		//	image_xscale = x_direction;
		//	global.animtemp = props().pAnim.animFall;
		//	setAnimAtObj(obj_player_anime,props().pAnim.animJumpAtkBot, -1 ,function (){});
		//}
		//else if(global.button_D_pressed && !global.button_bottom && global.button_top){
		//	hit1 = false;
		//	hit2 = false;
		//	hit3 = false;
		//	image_xscale = x_direction;
		//	global.animtemp = props().pAnim.animFall;
		//	setAnimAtObj(obj_player_anime,props().pAnim.animJumpAtkTop, -1 ,function (){});
		//}
		if(sprite_index != props().pAnim.animRoll) {
			setAnimAtObj(obj_player_anime,props().pAnim.animJump,4,function (){
					sprite_index = props().pAnim.animFall;
					player_state = "is falling";
			});
		}
	}
	else if(player_state == "is falling" && sprite_index != props().pAnim.animHurt && sprite_index != props().pAnim.animJumpAtkSide && sprite_index != props().pAnim.animJumpAtkBot && sprite_index != props().pAnim.animJumpAtkTop){
		//if(global.button_D_pressed && !global.button_bottom && !global.button_top ){
		//	hit1 = false;
		//	hit2 = false;
		//	hit3 = false;
		//	image_xscale = x_direction;
		//	global.animtemp = props().pAnim.animFall;
		//	setAnimAtObj(obj_player_anime,props().pAnim.animJumpAtkSide, -1 ,function (){});
		//}
		//else if(global.button_D_pressed && global.button_bottom && !global.button_top){
		//	hit1 = false;
		//	hit2 = false;
		//	hit3 = false;
		//	image_xscale = x_direction;
		//	global.animtemp = props().pAnim.animFall;
		//	setAnimAtObj(obj_player_anime,props().pAnim.animJumpAtkBot, -1 ,function (){});
		//}
		//else if(global.button_D_pressed && !global.button_bottom && global.button_top){
		//	hit1 = false;
		//	hit2 = false;
		//	hit3 = false;
		//	image_xscale = x_direction;
		//	global.animtemp = props().pAnim.animFall;
		//	setAnimAtObj(obj_player_anime,props().pAnim.animJumpAtkTop, -1 ,function (){});
		//}
		if(sprite_index != props().pAnim.animRoll && sprite_index != props().pAnim.animJump)   {
			//image_xscale = image_xscale * x_direction;
			global.animtemp = spr_fall;
			setAnimAtObj(obj_player_anime,props().pAnim.animFall ,-1,function (){});
		}
		
	}
	
	if(damageTimeCounter < maxDamageTime){
		isHurt();
	}
	
}
else{
	image_index = 	0;
}


