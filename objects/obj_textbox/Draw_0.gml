/// @description Draw text box

draw_sprite(spr_textbox, 0, x,y);

//Draw text
//Font credit: https://nimblebeastscollective.itch.io/magosfonts
//CC0 Public Domain https://creativecommons.org/publicdomain/zero/1.0/
draw_set_font(fnt_text);

//typewriter effect
if (_character_count < string_length(_text[_page])){
	_character_count += 1;
}
_text_part = string_copy(_text[_page], 1, _character_count);

//Draw name first
draw_set_halign(fa_center);
draw_text(x+_box_width/2,y, _name_tag);
draw_set_halign(fa_left);
draw_text_ext(x+_x_buffer, y+_string_height+_y_buffer, _text_part, _string_height, _box_width);
