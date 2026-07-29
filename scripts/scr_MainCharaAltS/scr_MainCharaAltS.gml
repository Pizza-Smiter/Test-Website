function scr_MainCharaAltS()
{
	//Control
	var up_key = keyboard_check(vk_up)
	var down_key = keyboard_check(vk_down)
	var left_key = keyboard_check(vk_left)
	var right_key = keyboard_check(vk_right)

	//Movement
	if keyboard_check(vk_shift)
	{
		MoveSpd = RunSpd
	}
	else
	{
		MoveSpd = WalkSpd
		Run = 0
	}

	xx = (right_key - left_key) * MoveSpd
	yy = (down_key - up_key) * MoveSpd

	x += xx
	y += yy

	//Animate
	if xx > 0
	{
		sprite_index = spr_KrisR
	}
	else if xx < 0
	{
		sprite_index = spr_KrisL
	}
	else if yy > 0
	{
		sprite_index = spr_KrisD
	}
	else if yy < 0
	{
		sprite_index = spr_KrisU
	}

	if xx = 0 or yy = 0
	{
		image_speed = 0
		Move = 0
	}
	if xx = !0 or yy = !0
	{
		image_speed = .5
		Move = 1
	}
	if xx = !0 or yy = !0 && Run = 1
	{
		image_speed = 1
		Move = 1
	}
}
