/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(obj_rootPoint_A.activePoint && obj_rootPoint_B.activePoint){
	obj_horizontal_wood.visible = true;
}


if(obj_rootPoint_C.activePoint && obj_rootPoint_D.activePoint){
	obj_horizontal_wood4.visible = true;
}

if(obj_rootPoint_E.activePoint && obj_rootPoint_F.activePoint){
	obj_horizontal_wood2.visible = true;
}

if(obj_rootPoint_G.activePoint && obj_rootPoint_H.activePoint){
	obj_horizontal_wood3.visible = true;
}


if(obj_rootPoint_A.activePoint && obj_rootPoint_B.activePoint 
&& obj_rootPoint_C.activePoint && obj_rootPoint_D.activePoint
&& obj_rootPoint_E.activePoint && obj_rootPoint_F.activePoint
&& obj_rootPoint_G.activePoint && obj_rootPoint_H.activePoint
){
	instance_destroy(obj_colisionfalseWall)
}