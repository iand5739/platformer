/// @desc DEATH

mode = "undef"

show_debug_message("DEITGHING")

obj_player.x=obj_player.xstart
obj_player.y=obj_player.ystart
obj_player.hsp = 0
obj_player.vsp = 0



with (obj_player)
{
	event_perform(ev_create, 0);
}

if (!alarm[11])
{
	alarm[11] = 20
}