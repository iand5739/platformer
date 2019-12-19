draw_set_color(c_black)
draw_rectangle(0,0,room_width,hidePercent,false)
draw_rectangle(0,room_height,room_width,room_height-hidePercent,false)

if (changeSpeed < 0) {changeSpeed = 0}

if (mode == "opening")
{
	hidePercent -= changeSpeed
	changeSpeed -= changeSpeed - changeSpeed*1.2
}
else if (mode == "closing")
{
	hidePercent += changeSpeed
	changeSpeed -= changeSpeed - changeSpeed/1.2
}
else if (mode == "clopening")
{
	hidePercent += changeSpeed
	changeSpeed -= changeSpeed - changeSpeed/1.2
	if (hidePercent >= room_height/2)
	{
		if (!alarm[alarmNum])
		{
			alarm[alarmNum] = 10
			
		}
	}

}
show_debug_message(alarm[alarmNum])