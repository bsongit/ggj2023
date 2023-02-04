/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(isRunning){
	timeCounter++;
	if(image_alpha > 0){
		image_alpha -= alphaTax;
	}
	else {
		image_alpha = 0;
	}
	if(timeCounter > maxTimer)
		instance_destroy(self)
}