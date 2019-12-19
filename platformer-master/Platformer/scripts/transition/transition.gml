/// @desc transition(mode)
/// @arg mode use open or close or clopen
/// @arg alarm select which alarm to activate

if (!instance_exists(obj_transition))
{
	instance_create_depth(x,y,0,obj_transition)
}

if (argument0 == "clopen")
{
	obj_transition.alarmNum = argument1
	obj_transition.hidePercent = 0
	obj_transition.mode = "clopening"
	obj_transition.changeSpeed = 65
}
else if (argument0 == "open")
{
	obj_transition.hidePercent = room_height/2
	obj_transition.mode = "opening"
	obj_transition.changeSpeed = 1
}
else if (argument0 == "close")
{
	obj_transition.hidePercent = 0
	obj_transition.mode = "closing"
	obj_transition.changeSpeed = 65
}