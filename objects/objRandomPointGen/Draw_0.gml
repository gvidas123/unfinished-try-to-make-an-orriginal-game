/// @description Insert description here
// You can write your code in this editor





var ww = ds_grid_width(file_grid);
var hh = ds_grid_height(file_grid);
var xx = 32;
var yy = 32;
for (var i = 0; i < ww; i++;)
{
    for (var j = 0; j < hh; j++;)
    {
		if (file_grid[# i, j] != 0) {
			draw_text(xx, yy, string(file_grid[# i, j]));
		}
        yy += 64;
    }
    yy = 32;
    xx += 64;
}








