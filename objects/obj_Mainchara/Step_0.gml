right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left)
up_key = keyboard_check(vk_up)
down_key = keyboard_check(vk_down)

xx = (right_key - left_key) * MoveSpd
yy = (down_key - up_key) * MoveSpd

if place_meeting(x+xx,y,obj_Solid)
{
	xx = 0
}
if place_meeting(x,y+yy,obj_Solid)
{
	yy = 0
}

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

if (xx != 0 or yy != 0)
{
	image_speed = 1
	image_index = 0
}
else
{
	image_speed = 0
	image_index = 0
}

x += xx
y += yy

