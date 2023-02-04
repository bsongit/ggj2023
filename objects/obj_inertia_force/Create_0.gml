/// @description Insert description here
// You can write your code in this editor

acceleration = 0;
x_direction = 1;
y_direction = 1;
maxSteps = 500;
currentStep = 0;
h_force = 0;
v_force = 0;
max_hForce = 0;
max_vForce = 0;
rotationForce = 0;
gameObj = obj_null;

function initForce(
	_gameObj,
	_x_direction,
	_y_direction,
	_maxSteps,
	_acceleration,
	_max_hForce,
	_max_vForce,
	_rotationForce){
	acceleration = _acceleration;
	x_direction = _x_direction;
	y_direction = _y_direction;
	maxSteps = _maxSteps;
	max_hForce = _max_hForce;
	max_vForce = _max_vForce;
	rotationForce = _rotationForce;
	gameObj = _gameObj;
	currentStep = 0;
}

