key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_space = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));

if (global.active == false)
{
	key_right = 0
	key_left = 0
	key_space = 0
}

if (!place_meeting(x,y+1,obj_moveingplatform_horz))
{
	hsp = (key_right - key_left) * walksp;
} else
{
	hsp = ((key_right - key_left) * walksp) + instance_nearest(x,y+1,obj_moveingplatform_horz).hsp
}


//accelerating ground fall and jump
if (!place_meeting(x,y + 1,obj_wall)){
	vsp += grav;
}
else if (key_space) {

vsp = jumpht * -1;
audio_play_sound(sfx_jump,50,false)
x_scale = image_xscale/strech_scale;
y_scale = image_yscale*strech_scale;
	
}
	
if (global.playercanwalljaump == 1)
{
	if (key_space and key_left and vsp > 0 and place_meeting(x-1,y,obj_wall))
	{
		vsp = jumpht * -1;
		hsp = hsp*-1
		audio_play_sound(sxf_walljump,62,false)
		x_scale = image_xscale/strech_scale;
		y_scale = image_yscale*strech_scale;
	}

	if (key_space and key_right and vsp > 0 and place_meeting(x+1,y,obj_wall))
	{
		vsp = jumpht * -1;
		hsp = hsp*-1
		x_scale = image_xscale/strech_scale;
		y_scale = image_yscale*strech_scale;
		audio_play_sound(sxf_walljump,62,false)
	}
}
	
	
if (place_meeting(x+hsp,y+vsp,obj_bouncepad))
{
	if ((vsp < 5) and (vsp > 0))
	{
		vsp = 0
		while (!place_meeting(x,y+1,obj_bouncepad)){
			y += 1;
		}
	}
	else
	{
		audio_play_sound(sfx_bounce,10,false)
		vsp = vsp*-0.8
	}
}
	
//horizontial collision
if (place_meeting(x + hsp,y,obj_wall)) {
	while (!place_meeting(x+sign(hsp),y,obj_wall)){
		x += sign(hsp);
	}	
	hsp = 0;
}

if(place_meeting(x+hsp,y,obj_enemy))
{
	if (global.alive)
	{
		player_die()
	}
}

x += hsp;

if (global.alive == true)
{
	if (place_meeting(x,y+vsp,obj_enemy))
	{
		vsp = jumpht * -1;
		x_scale = image_xscale/strech_scale;
		y_scale = image_yscale*strech_scale;
		with (instance_nearest(x,y+vsp,obj_enemy))
		{
			instance_destroy();
			audio_play_sound(sfx_jump_big,70,false)
			break;
		}
	}
}

if (global.playerhasballon == 1)
{
	vsp = -1.5
}

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
	audio_play_sound(sfx_ground,10,false)
	x_scale = image_xscale*strech_scale;
	y_scale = image_yscale/strech_scale;
}

x_scale = lerp(x_scale, image_xscale, 0.1)
y_scale = lerp(y_scale, image_yscale, 0.1)