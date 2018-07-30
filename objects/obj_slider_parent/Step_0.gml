/// @description Action on slider selection

if mouse_check_button_pressed(mb_left)
{
	var button_x = x+sprite_width*slider_value;
	var button_y = y;
	var button_radius = sprite_get_width(spr_slider_button)/2;
	if point_in_circle(mouse_x, mouse_y, button_x, button_y, button_radius+5)	// Make radious 5px extra to easily grab button
	{
		slider_button_selected = true;
	}
}

if !mouse_check_button(mb_left)
{
	slider_button_selected = false;
}

if slider_button_selected
{
	slider_value = clamp((mouse_x-x)/sprite_width, 0, slider_max_value);
	slider_value_percentage = round(slider_value*100);
}

// Calculate proportion of combined slider bars
// (***NOTE: Rounding error????***)
slider_value_proportion = round((slider_value/global.total_slider_value)*100);