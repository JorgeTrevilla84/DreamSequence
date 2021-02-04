//Get player input
keyLeft = keyboard_check(ord("A")) or (gamepad_axis_value(0, gp_axislh) < 0);
keyRight = keyboard_check(ord("D")) or (gamepad_axis_value(0, gp_axislh) > 0);
keyUp = keyboard_check(ord("W")) or (gamepad_axis_value(0, gp_axislv) < 0);
keyDown = keyboard_check(ord("S")) or (gamepad_axis_value(0, gp_axislv) > 0);

keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

script_execute(state);



