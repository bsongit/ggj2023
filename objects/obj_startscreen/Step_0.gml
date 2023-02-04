/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
checkInputs();

if(global.button_bottom_pressed && menuIndex == 0){
	menuIndex = 1;
}
else if(global.button_top_pressed && menuIndex == 1){
	menuIndex = 0;
}

if(global.button_Enter_pressed){
	if(menuIndex == 0){
		room_goto(level1)
	}
	else if(menuIndex == 1){
	
	}
}