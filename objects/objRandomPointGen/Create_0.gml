/// @description Insert description here
// You can write your code in this editor

surface_resize(application_surface,objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);
window_set_size(objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);

//file_grid = load_csv("testPattern.csv");

var block_width = global.tileSize
var block_height = global.tileSize

xTotalSize = floor(room_width/block_width);
yTotalSize = floor(room_height/block_height);

file_grid = ds_grid_create(xTotalSize, yTotalSize)
lineSpace = 170
for (lineLoop = 0; lineLoop < 2; lineLoop++) {
	xPoints = ds_list_create()
	yPoints = ds_list_create()
	randomize()
	ds_list_add(xPoints, 0)
    ds_list_add(yPoints, 0)
    for (i = 1; i < 10; i++) {
        ds_list_add(xPoints, i*30)
        ds_list_add(yPoints, irandom(lineSpace)+1)//+ (+ (lineLoop lineSpace * 0.8)
    }
	
	//show_debug_message(xPoints[|0])
	for (i = 0; i < 9; i++) {
		ds_grid_set(file_grid, xPoints[|i], yPoints[|i], "3")
	}
	for (j = 0; j < 8; j++) {
		angle1 = arctan((yPoints[|j+1]-yPoints[|j])/(xPoints[|j+1]-xPoints[|j]))
		fullDistance = sqrt(power(yPoints[|j+1]-yPoints[|j], 2)+power(xPoints[|j+1]-xPoints[|j], 2))
		/*
		show_debug_message("Angle:")
		show_debug_message(radtodeg(angle1))
		show_debug_message("Distance:")
		show_debug_message(fullDistance)
		show_debug_message("x")
		show_debug_message(xPoints[|j])
		show_debug_message("y")
		show_debug_message(yPoints[|j])
		*/
		for	(i = 0; i < 400; i++) {
			var increment = (fullDistance/400)*i
			var xIncrement = increment*cos(angle1)
			var yIncrement = increment*sin(angle1)
            xDrawPoint = (xPoints[|j] + xIncrement)
            yDrawPoint = (yPoints[|j] + yIncrement)
            //show_debug_message(yDrawPoint)
            ds_grid_set(file_grid, xDrawPoint, yDrawPoint, 1)
            ds_grid_set(file_grid, xDrawPoint, yDrawPoint, "4")
			//instance_create_depth(xDrawPoint*64, yDrawPoint*64, 1, objTrialBlock)
		}
		//show_debug_message("-----------------------------")
	}

	/*for (i = 0; i < 9; i++) {
		ds_grid_set(file_grid, xPoints[|i], yPoints[|i], xPoints[|i])
	}*/
}

var ww = floor(room_width/block_width);
var hh = floor(room_height/block_height);
//show_debug_message(ww)
//show_debug_message(hh)
//var file_grid = ds_grid_create(ww, hh);
/*for (var i = 0; i < room_width/block_width; i += 1) {
	ds_grid_set(file_grid, i, i, "4");
	ds_grid_set(file_grid, i-1, i, "4");
	ds_grid_set(file_grid, i+1, i, "4");
}*/

var filenames = ["pattern1.csv", "pattern2.csv", "pattern3.csv"]

var pattern_count = array_length(filenames);

var patterns = array_create(pattern_count)

for (var ind = 0; ind < pattern_count; ++ind) {
	patterns[ind] = load_csv(filenames[ind]);
}

var number_of_tries = 10000;
repeat (number_of_tries) {
	var placeable = true;
	var x_cord = irandom(ww-1);
	var y_cord = irandom(hh-1);
	
	var pattern = patterns[irandom(pattern_count-1)];
	var pattern_width = ds_grid_width(pattern)
	var pattern_height = ds_grid_height(pattern)
	
	// check if does not override path	
	for (var i = 0; i < pattern_width; ++i) {
		for (var j = 0; j < pattern_height; ++j) {
			if (file_grid[# i + x_cord, j + y_cord] != "0") {
				placeable = false;
				break;
			}
		}
		if (!placeable) {
			break;
		}
	}
	if (!placeable) {
		continue;
	}
	
	for (var i = 0; i < pattern_width; ++i) {
		for (var j = 0; j < pattern_height; ++j) {
			file_grid[# i + x_cord, j + y_cord] = pattern[# i, j];
		}
	}	
	
}

for (var i = 0; i < ww; i++;)
{
    for (var j = 0; j < hh; j++;)
    {
		var tile = file_grid[# i, j];
		//show_debug_message(tile)
		if (tile != 0 && tile != "0" && tile != "4") {
			instance_create_layer(i*block_width+block_width/2, j*block_height+block_height/2, "blocks", global.tileValues[? tile]);
		}
    }
}







