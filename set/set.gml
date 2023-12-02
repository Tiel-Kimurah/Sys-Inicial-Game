//andar

//sistema para fazer andar de maneira mais simplificada
move = -keyboard_check(vk_left)+keyboard_check(vk_right); //sistema que add pontos de velocidade ao apertr < ou >
hsp = move * spd

//funcao de colisao com a parede
//a funcao de colisao com a parede tem de vir antes da acao de andar
if place_meeting(x+hsp, y, obg_bloco){
	while !place_meeting(x+sign(hsp), y, obg_bloco){
		x += sign(hsp);
	};
	
	hsp = 0;
};

//acao de andar
x += hsp

//colisao na parede vertical ( solo )
if place_meeting(x, y+vsp, obg_bloco){
	while !place_meeting(x, y+sign(vsp), obg_bloco){
		y += sign(vsp);
	};
	
	vsp = 0;
};

y += vsp;

//sistema de pulo + gravidade incluida
//maneira simplificada
if place_meeting(x, y+1, obg_bloco){
	if keyboard_check_pressed(vk_space){
		vsp = jump;
	}
}else{
	vsp += gravidade;
};
