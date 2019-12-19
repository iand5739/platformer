with (obj_summon_enemy)
{
	event_perform(ev_create, 0);
}

with (obj_summon_powerup_climb)
{
	event_perform(ev_create, 0);
}

with (obj_summon_powerup_balloon)
{
	event_perform(ev_create, 0);
}

global.alive = true

transition("open",0)