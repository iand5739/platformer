image_alpha = 1

hsp = 0
vsp = 0
grav = 0.4
walksp = 4.2
jumpht = 9

x_scale = image_xscale
y_scale = image_yscale

global.alive = true

strech_scale = 2
global.playercanwalljaump = 0


while (!place_meeting(x,y+1,obj_wall)){
	y += 1;
}
global.active = true
global.playerhasballon = 0
