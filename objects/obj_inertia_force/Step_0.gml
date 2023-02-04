/// @description Insert description here
// You can write your code in this editor
currentStep++;
h_force += acceleration;
v_force += acceleration;

if(h_force > max_hForce)
	h_force = max_hForce;
if(v_force > max_vForce)
	v_force = max_vForce;
if(!gameObj.wallLimiter){
	gameObj.x +=  h_force * x_direction;
	gameObj.y +=  v_force * y_direction;
}

gameObj.image_angle += rotationForce;

if(currentStep > maxSteps){
	gameObj.image_angle = 0;
	instance_destroy(self);
}

if(gameObj == obj_player_anime){
	//gameObj.x += gameObj.horizontal_speed * gameObj.x_direction * -1;
	 gameObj.horizontal_speed = 0;
}

