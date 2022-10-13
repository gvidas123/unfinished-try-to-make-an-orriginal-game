/// @description Insert description here
// You can write your code in this editor

surface_resize(application_surface,objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);
window_set_size(objDisplayInit.idealWidth*global.zoom,objDisplayInit.idealHeight*global.zoom);

//file_grid = load_csv("testPattern.csv");

xTotalSize = 300
yTotalSize = 170

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
		ds_list_add(yPoints, irandom(lineSpace)+1)//+ (+ (lineLoop * lineSpace * 0.8)
	}
	
	//show_debug_message(xPoints[|0])
	for (i = 0; i < 9; i++) {
		ds_grid_set(file_grid, xPoints[|i], yPoints[|i], 5)
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
		show_debug_message(yPoints[|j])*/
		for	(i = 0; i < 100; i++) {
			var increment = (fullDistance/100)*i
			var xIncrement = increment*cos(angle1)
			var yIncrement = increment*sin(angle1)
			xDrawPoint = (xPoints[|j] + xIncrement)
			yDrawPoint = (yPoints[|j] + yIncrement)
			//show_debug_message(yDrawPoint)
			ds_grid_set(file_grid, xDrawPoint, yDrawPoint, 5)
			//instance_create_depth(xDrawPoint*64, yDrawPoint*64, 1, objTrialBlock)
		}
		//show_debug_message("-----------------------------")
	}

	for (i = 0; i < 9; i++) {
		ds_grid_set(file_grid, xPoints[|i], yPoints[|i], xPoints[|i])
	}
}










