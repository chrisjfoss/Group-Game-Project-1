/// @description Insert description here
// You can write your code in this editor


y -= 0.3;

image_alpha -= 0.018;

image_xscale -= 0.004;
image_yscale -= 0.004;

if (image_alpha < 0) { instance_destroy(); }