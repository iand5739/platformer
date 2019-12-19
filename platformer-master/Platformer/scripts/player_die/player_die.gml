if (global.alive)
	{
		global.active = false
		audio_play_sound(sxf_die,10,false)
		obj_player.image_alpha = 0
		global.alive = false
		transition("clopen",0)
	}