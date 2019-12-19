if (place_meeting(x + hsp,y,obj_enemy_bounce)) {
	while (!place_meeting(x+sign(hsp),y,obj_enemy_bounce)){
		x += sign(hsp);
	}	
	hsp = hsp*-1;
}

x+=hsp