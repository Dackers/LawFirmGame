/// @description Draw the slider

draw_self();

// Draw only the part of the sprite represented by the slider_value
draw_sprite_part(sprite_index, 1, 0, 0, sprite_width*slider_value, sprite_height, x, y-sprite_get_yoffset(sprite_index));
draw_sprite(spr_slider_button, 0, x+sprite_width*slider_value, y);

// Draw the numeric value of each slider
draw_set_colour(c_white);
draw_set_font(fnt_verdana);
draw_set_valign(fa_center)
		// Note: Move slider_value_proportion out of here
draw_text(x+sprite_width+10, y, string(slider_value_percentage)+"%     "+string(slider_value_proportion)+"%");	// Move this calculation out of the draw event
draw_set_valign(fa_bottom)
draw_text(x, y-5, slider_title);