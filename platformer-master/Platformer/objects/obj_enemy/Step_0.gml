//accelerating ground fall and jump
if (!place_meeting(x,y + 1,obj_wall)){
	vsp += grav;
}
else 


if (place_meeting(x,y,obj_enemy_jump)) {

vsp = jumpht * -1;
x_scale = image_xscale/strech_scale;
y_scale = image_yscale*strech_scale;
	
}

	
//horizontial collision
if (place_meeting(x + hsp,y,obj_enemy_bounce)) {
	while (!place_meeting(x+sign(hsp),y,obj_enemy_bounce)){
		x += sign(hsp);
	}	
	hsp = hsp*-1;
}

if (place_meeting(x,y,obj_enemy_bounce)) {hsp = 0;}

x += hsp;

//vertical collision
if (place_meeting(x,y + vsp,obj_wall)) {
	while (!place_meeting(x,y+sign(vsp),obj_wall)){
		y += sign(vsp);
	}	
	vsp = 0;
} 
y += vsp;
	
// check for landing
if (place_meeting(x,y + 1,obj_wall) && (!place_meeting(x,yprevious + 1,obj_wall))) {
	x_scale = image_xscale*strech_scale;
	y_scale = image_yscale/strech_scale;
}



x_scale = lerp(x_scale, image_xscale, 0.1)
y_scale = lerp(y_scale, image_yscale, 0.1)