// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setAnimAtObj(obj,spr, frameIndexOfCallback, callbackFunc ){

	obj_anim_handler.running = true;
	obj_anim_handler.objTarget = obj;
	obj_anim_handler.frameIndexOfCallback = frameIndexOfCallback;
	obj_anim_handler.callbackFunc = callbackFunc;
	
	if(obj.sprite_index != spr){
		obj.image_index = 0;
		obj.sprite_index = spr;
		obj.image_index = 0;
	}
	
}

function setAnimBasedOnWeapon(weapon){
		props().pAnim = weapon.animations_player; 
}

function applyForceAtObj(
	gameObj,
	x_direction,
	y_direction,
	maxSteps,
	acceleration,
	max_hForce,
	max_vForce,
	rotationForce){
		var tempInstance = instance_create_layer(0,0,"runtime",obj_inertia_force);
		tempInstance.initForce(gameObj,x_direction,y_direction,maxSteps,acceleration,max_hForce,max_vForce,rotationForce);
}