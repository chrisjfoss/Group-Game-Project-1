/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(dark_surface))
{
	dark_surface = surface_create(camera_get_view_width(0)+4,camera_get_view_height(0)+4);
}

surface_set_target(dark_surface);
draw_clear_alpha(c_black,1.0);

draw_set_color(c_white);
gpu_set_blendmode(bm_add);

with (light_source_parent_obj)
{
	if (light_on)
	{
		draw_circle_color(x-camera_get_view_x(0)+2+light_offset_x, y-camera_get_view_y(0)+2+light_offset_y,light_radius,c_white,c_black,false);
	}
}

gpu_set_blendmode(bm_normal);

surface_reset_target();
draw_set_alpha(1.0);
draw_set_color(c_white);

gpu_set_blendmode(bm_normal);

draw_surface_ext(dark_surface,camera_get_view_x(0)-2,camera_get_view_y(0)-2,1,1,0,c_white,darkness_alpha);

gpu_set_blendmode(bm_normal);