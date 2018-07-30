/// @description Initialize combined slider values variables

image_speed = 0;
image_index = 4;

global.total_slider_value = 0;

// Set all draw variables to initial value
bar_width_technique = sprite_width*(obj_slider_court_technique.slider_value_proportion/100);
bar_width_charisma = sprite_width*(obj_slider_court_charisma.slider_value_proportion/100);
bar_width_argument = sprite_width*(obj_slider_court_argument.slider_value_proportion/100);
bar_width_aggressiveness = sprite_width*(obj_slider_court_aggressiveness.slider_value_proportion/100);

bar_technique_x = x;
bar_charisma_x = bar_technique_x + bar_width_technique;
bar_argument_x = bar_charisma_x + bar_width_charisma;
bar_aggressiveness_x = bar_argument_x + bar_width_argument;