audio_play_sound(sfx_nextlevel,62,false)
instance_destroy(obj_room_portal_next)
global.active = false
if (audio_is_playing(sfx_nextlevel))
{
	alarm[0] = 2
}