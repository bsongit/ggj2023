/// @description Insert description here
// You can write your code in this editor


enemy_name = "zé bostola";
isMirroed = true;
isAlert = false;
wallLimiter = false;
isInvensible = false;

HP = 10;

itsFly = false;

enemyRoofInstance = instance_create_layer(x,y,"colisions",obj_enemy_roof);
enemyRoofInstance.enemyInstance = self;


visionColisionInstance = instance_create_layer(x,y,"colisions",obj_enemy_vision_colision);
visionColisionInstance.enemyInstance = self;

atk1Damage = 0;
atk2Damage = 0;
atk3Damage = 0;
atk4Damage = 0;
atk5Damage = 0;

hit1 = false;

minDistanceOfTheGround = 8;
x_direction = -1;
acceleration = 0.03;
max_h_speed = 2.5;
max_v_speed = 0.5;
h_speed = 0;
v_speed = 0;
stepsToChangeState = 100;
stepsCounter = 0;


enemy_state = "patrol";
afterAlertActions = ["get closer"]

animations = {
idle_right: spr_enemy_idle,
idle_left: spr_enemy_idle,
run_right : spr_enemy_run,
run_left : spr_enemy_run,
fly_left : spr_enemy_fly , 
fly_right : spr_enemy_fly ,
jump_right : spr_enemy_jump ,
jump_left  : spr_enemy_jump ,
appear_right : spr_enemy_appear ,
appear_left  : spr_enemy_appear ,
disappear_right: spr_enemy_disappear,
disappear_left : spr_enemy_disappear,
def_right : spr_enemy_def,
def_left  : spr_enemy_def,
hurt_right : spr_enemy_hurt,
hurt_left  : spr_enemy_hurt,
death_right : spr_enemy_death ,
death_left  : spr_enemy_death ,
atk1_right : spr_enemy_atk1,
atk1_left : spr_enemy_atk1,
atk2_right : spr_enemy_atk2,
atk2_left  : spr_enemy_atk2,
atk3_right : spr_null,
atk3_left  : spr_null,
atk4_right : spr_null,
atk4_left  : spr_null,
atk5_right : spr_null,
atk5_left  : spr_null,
talk_right : spr_enemy_talk,
talk_left  : spr_enemy_talk,
happy_right : spr_enemy_happy,
happy_left  : spr_enemy_happy,
sad_right : spr_enemy_sad,
sad_left  : spr_enemy_sad,
fury_right : spr_enemy_fury,
fury_left  : spr_enemy_fury,
rest_right : spr_enemy_rest,
rest_left  : spr_enemy_rest,
alert_right : spr_enemy_alert,
alert_left  : spr_enemy_alert,
capsulehit_right : spr_enemy_capsulehit,
capsulehit_left  : spr_enemy_capsulehit,
evolution_right : spr_enemy_evolution,
evolution_left  : spr_enemy_evolution,
}

lastAnimation = animations.idle_right;
