// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.gamepad_index = 0;
global.gamepad_deadzone = 0.2;

gamepad_set_axis_deadzone(global.gamepad_index,global.gamepad_deadzone);

function check_left(){
	if (keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(global.gamepad_index,gp_padl) || gamepad_axis_value(global.gamepad_index,gp_axislh) < -0.5)
	{
		return true;
	}
	return false;
}

function check_right(){
	if (keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(global.gamepad_index,gp_padr) || gamepad_axis_value(global.gamepad_index,gp_axislh) > 0.5)
	{
		return true;
	}
	return false;
}

function check_up(){
	if (keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(global.gamepad_index,gp_padu) || gamepad_axis_value(global.gamepad_index,gp_axislv) < -0.5)
	{
		return true;
	}
	return false;
}

function check_down(){
	if (keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(global.gamepad_index,gp_padd) || gamepad_axis_value(global.gamepad_index,gp_axislv) > 0.5)
	{
		return true;
	}
	return false;
}

function check_left_pressed(){
	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(global.gamepad_index,gp_padl))
	{
		return true;
	}
	return false;
}

function check_right_pressed(){
	if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(global.gamepad_index,gp_padr))
	{
		return true;
	}
	return false;
}

function check_up_pressed(){
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(global.gamepad_index,gp_padu))
	{
		return true;
	}
	return false;
}

function check_down_pressed(){
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(global.gamepad_index,gp_padd))
	{
		return true;
	}
	return false;
}

function check_primary_pressed(){
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(global.gamepad_index,gp_face1))
	{
		return true;
	}
	return false;
}

function check_primary(){
	if (keyboard_check(vk_enter) || keyboard_check(vk_space) || keyboard_check(ord("E")) || gamepad_button_check(global.gamepad_index,gp_face1))
	{
		return true;
	}
	return false;
}

function check_secondary_pressed(){
	if (keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(global.gamepad_index,gp_face2))
	{
		return true;
	}
	return false;
}

function check_secondary(){
	if (keyboard_check(vk_backspace) || keyboard_check(ord("Q")) || gamepad_button_check(global.gamepad_index,gp_face2))
	{
		return true;
	}
	return false;
}