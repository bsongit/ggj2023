// Variables
loadFile();
aceleration = 1;
coiote_fall = -3;
max_x_speed = 8;
max_y_speed = 10;
min_x_speed = 1;
min_y_speed = 1;
roll_speed = 3;
roll_direction = 1;
x_direction = 1;
horizontal_speed = min_x_speed;
vertical_speed = min_y_speed;
jump_force = 256;
jump_size = jump_force;
player_state = "is falling";
wallLimiter = false;
draggerItem = false;
freezeMode = false;
maxDamageTime = 50;
damageTimeCounter = maxDamageTime;
isInvensible = false;
debuggerHudInstance = 0;
var localCounterJump = 0;



animImpulseAtkTimer = 0;
animImpulseAtkCounter = 0;

timer = -1;
timeTaxUpdate = 50;
timeStepCounter = 0;
pauseTime = false;

hit1 = false;
hit2 = false;
hit3 = false;


//Init Layers
window_set_fullscreen(true);
global.current_time = floor(current_time/1000);
global.animtemp = sprite_index;
instance_create_layer(x,y,"runtime",obj_parallax_controller);
instance_create_layer(x,y,"runtime",obj_player_floor_colision);
instance_create_layer(x,y,"runtime",obj_player_back_colision);
instance_create_layer(x,y,"runtime",obj_player_front_colision);
instance_create_layer(x,y,"runtime",obj_player_roof_colision);
instance_create_layer(x,y,"runtime",obj_cam);
instance_create_layer(x,y,"HUD",obj_timer);
instance_create_layer(x,y,"HUD",obj_lifepoint_handler);
instance_create_layer(x,y,"player",obj_anim_handler);
boxDialog = instance_create_layer(x,y,"player",obj_boxDialog);
boxDialog.visible = false;
//weaponInstance = instance_create_layer(x,y,"player",props().currentLeftHand);
weaponInstance = obj_null;
camera_set_view_target(view_camera[0],obj_cam);
//if(props().currentLeftHand != obj_null)
//	setAnimBasedOnWeapon(props().currentLeftHand);
	



//State Functions

function isOnTheFloor(){
	horizontalMoviment();
	if(global.button_A_pressed && sprite_index != props().pAnim.animHurt  && sprite_index != props().pAnim.animAtk1 && sprite_index != props().pAnim.animAtk2 && sprite_index != props().pAnim.animAtk3){
		y -= max_y_speed;
		jump_size = y - jump_force;
		player_state = "is jumping";
	}
}

function isFalling(){
	if(wallLimiter && draggerItem){
		if(global.button_left || global.button_right){
			wallLimiter = false;
		}
	}
	fallMoviment();
}

function isJumping(){
		jumpMoviment();
		if(global.button_A_released){
			vertical_speed = coiote_fall; 
			player_state = "is falling";
		}
}

function isDraginOnTheWall(){
	wallDragMoviment();
}

function isDead(){
	if(sprite_index != props().pAnim.animDeath){
		mask_index = spr_null;
		global.animtemp = props().pAnim.animIdle;
		setAnimAtObj(obj_player_anime,props().pAnim.animDeath,7,function (){
			visible = false;
		});
	}
}

function isHurt(){
	if(damageTimeCounter > 20 && damageTimeCounter < 22){
			if(player_state == "is on the floor")
				sprite_index = props().pAnim.animIdle;
			else {
				sprite_index = props().pAnim.animFall;
			}
	}
	if(image_alpha == 0){
		image_alpha = 1;
	}
	else{
		image_alpha = 0;
	}	
	damageTimeCounter ++;
	if(props()._hp <= 0){
		image_alpha = 1;
		damageTimeCounter = maxDamageTime;
		isInvensible = false;
		player_state = "is dead";
		weaponInstance.visible = false;
	}
	if(damageTimeCounter >= maxDamageTime){
		image_alpha = 1;
		damageTimeCounter = maxDamageTime;
		isInvensible = false;
	}
}

// Movement Functions

function fallMoviment(){
	if(sprite_index != props().pAnim.animHurt){
		if(vertical_speed < max_y_speed){
			vertical_speed += aceleration;
		}
		y += vertical_speed;
	}
		horizontalMoviment();

}

function wallDragMoviment(){
	if(wallLimiter){
		localCounterJump = 0;
		if(vertical_speed < max_y_speed){
			vertical_speed += aceleration;
		}
		y += (vertical_speed/3);
	}
	else{
		if(localCounterJump < 5){
			if(global.button_A){
				localCounterJump = 0;
				y -= max_y_speed;
				jump_size = y - jump_force;
				player_state = "is jumping";
			}
		}
		else{
			localCounterJump = 0;
			vertical_speed = 0; 
			player_state = "is falling";
		}
		horizontal_speed = min_x_speed;
		localCounterJump++;
	}
	horizontalMoviment();
}

function jumpMoviment(){
	if(jump_size < y){
		y -= max_y_speed;
	}
	else{
		vertical_speed = coiote_fall; 
		player_state = "is falling";
	}
	horizontalMoviment();
}

function horizontalMoviment(){
		if(x_direction > 0 && global.button_left_pressed && sprite_index != props().pAnim.animRoll){
			x_direction = -1;
			roll_direction = -1;
			horizontal_speed = 0;
			wallLimiter = false;
		}
		else if(x_direction < 0 && global.button_right_pressed && sprite_index != props().pAnim.animRoll){
			x_direction = 1;
			roll_direction = 1;
			horizontal_speed = 0;
			wallLimiter = false;
		}
		else if((sprite_index == props().pAnim.animTurn || sprite_index == props().pAnim.animJump || sprite_index == props().pAnim.animJumpAtkSide || sprite_index == props().pAnim.animJumpAtkBot || sprite_index == props().pAnim.animJumpAtkTop || sprite_index == props().pAnim.animFall || sprite_index == props().pAnim.animRun || sprite_index == props().pAnim.animImpulseAtk) && !wallLimiter && (global.button_left && !global.button_right || global.button_right && !global.button_left )){
			if(horizontal_speed < max_x_speed){
				horizontal_speed += aceleration;
			}
			x += horizontal_speed * x_direction;
			if(sprite_index == props().pAnim.animRun && sprite_index != props().pAnim.animTurn){
				if(global.button_right ){
					if(image_xscale < 0)
						image_xscale = image_xscale * -1;
				}
				else if(global.button_left ){
					if(image_xscale > 0)
						image_xscale = image_xscale * -1;
				}
			}
		}
}