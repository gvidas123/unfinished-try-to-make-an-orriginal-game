/// @description Insert description here
// You can write your code in this editor

idealHeight = 216;
aspectRatio = display_get_width()/display_get_height();
idealWidth = round(idealHeight * aspectRatio);
global.maxZoom = floor(display_get_width()/idealWidth);
surface_resize(application_surface,idealWidth,idealHeight);
window_set_size(idealWidth,idealHeight);
surface_resize(application_surface,objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);
window_set_size(objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);


