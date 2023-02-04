



function obj_encode(obj){
	return base64_encode(json_stringify(obj));
}
function obj_decode(obj){
	var temp = json_parse(base64_decode(obj));
	show_debug_message(temp)
	//temp.fastItems = new ArrayJs(temp.fastItems.values);
	//temp.inventory = new ArrayJs(temp.inventory.values);
	//temp.armors = new ArrayJs(temp.armors.values);
	//temp.pants = new ArrayJs(temp.pants.values);
	//temp.shoes = new ArrayJs(temp.shoes.values);
	//temp.weapons = new ArrayJs(temp.weapons.values);
	//temp.helmets = new ArrayJs(temp.helmets.values);
	//temp.shields = new ArrayJs(temp.shields.values);
	//temp.accessories = new ArrayJs(temp.accessories.values);
	//temp.cards = new ArrayJs(temp.cards.values);
	//temp.defeatedEnemys = new ArrayJs(temp.defeatedEnemys.values);
	//temp.dontRepeatThisDialogue = new ArrayJs(temp.dontRepeatThisDialogue.values);
	return temp;
}

function loadFile(){
	
	var obj_template = obj_encode({
	currentMap: "Nenhum arquivo",
	money: 0,
	mapPercent: 0,
	gameTime: 0,
	dificult: "normal",
	//fastItems: new ArrayJs([]),
	//inventory : new ArrayJs([]),
	//armors: new ArrayJs([]),
	//pants: new ArrayJs([]),
	//shoes: new ArrayJs([]),
	//weapons: new ArrayJs([]),
	//helmets: new ArrayJs([]),
	//shields: new ArrayJs([]),
	//accessories: new ArrayJs([]),
	//cards: new ArrayJs([]),
	//defeatedEnemys: new ArrayJs([]),
	//dontRepeatThisDialogue: new ArrayJs([]),
	_hp: 3,
	_sp: 0,
	_force: 0,
	_def: 0,
	_agi: 0,
	criticalProbability: 0,
	playerName: "Lugino",
	currentLeftHand: obj_null,
	currentRightHand: obj_null,
	currentHelmet: obj_null,
	currentArmor: obj_null,
	currentShoe: obj_null,
	currentAccessory1: obj_null,
	currentAccessory2: obj_null,
	pAnim: {
		animIdle: spr_idle_w_weapon,
		animRun: spr_run,
		animRunAtk1: spr_run_atk1,
		animRunAtk2: spr_run_atk2,
		animImpulseAtk: spr_impulse_atk,
		animTurn: spr_turn,
		animCrouch: spr_crouch,
		animJump: spr_jump,
		animFall: spr_fall,
		animRoll: spr_roll,
		animAtk1: spr_atk1_n_weapon,
		animAtk2: spr_atk2_n_weapon,
		animAtk3: spr_atk3_n_weapon,
		animTopAtk: spr_topatk_n_weapon,
		animJumpAtkSide: spr_jump_atak_n_weapon,
		animJumpAtkTop: spr_jump_ataktop_n_weapon,
		animJumpAtkBot: spr_jump_atakbot_n_weapon,
		animCrouchAtk: spr_crouch_atk_n_weapon,
		animDefense: spr_defense,
		animHurt: spr_hurt,
		animDeath: spr_death
	}
	});
	
	if(file_exists("drac_save.json")){
		ini_open("drac_save.json");
		global.saves = obj_decode(ini_read_string("dracardia","saves",[obj_decode(obj_template),obj_decode(obj_template),obj_decode(obj_template),obj_decode(obj_template),obj_decode(obj_template)]));
		ini_close();
	}
	else {
		global.saves = [obj_decode(obj_template),obj_decode(obj_template),obj_decode(obj_template),obj_decode(obj_template),obj_decode(obj_template)];	
	}
}

function props(){
	return global.saves[0]
}


function getAtbAtIndex(index){
	return global.saves[index]
}


function newSave(index){
	if(file_exists("drac_save.json"))
		file_delete("drac_save.json");
	ini_open("drac_save.json");
	ini_write_string("dracardia","saves", obj_encode(global.saves));
	ini_close();
}

function eraseFiles(){
	if(file_exists("drac_save.json"))
		file_delete("drac_save.json");
}
