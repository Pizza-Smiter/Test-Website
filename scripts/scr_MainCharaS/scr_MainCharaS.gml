function scr_MainCharaS()
{
	//Movement
	xx = MoveSpd
	yy = MoveSpd

	//Moving
	if keyboard_check(vk_left)
	{
		x += -xx
	}
	if keyboard_check(vk_right)
	{
		x += xx
	}
	if keyboard_check(vk_up)
	{
		y += -yy
	}
	if keyboard_check(vk_down)
	{
		y += yy
	}
	
	// Running
	if keyboard_check(vk_shift)
	{
		if MoveSpd < RunSpd
		{
			MoveSpd += .1
		}
	}
	if !keyboard_check(vk_shift)	
	{
		if MoveSpd > WalkSpd
		{
			MoveSpd += -.2
		}
	}

	if x = xprevious
	{
		Move = 0
	}
	if !(x = xprevious)
	{
		Move = 1
	}
	if y = yprevious
	{
		Move = 0
	}
	if !(y = yprevious)
	{
		Move = 1
	}
	//Animation
	if MoveSpd > WalkSpd
	{
		image_speed = (2 * Move)
	}
	else
	{
		image_speed = (1 * Move)
	}
}