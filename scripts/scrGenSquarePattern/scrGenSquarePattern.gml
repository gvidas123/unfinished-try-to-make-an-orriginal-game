// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrGenSquarePattern(cordinate_x,cordinate_y,size,tempObject,tileLayer) {
	variable_1 = floor(size/2 )*-1;
	
	repeat(size) {
		variable_2 = floor(size/2 )*-1;
		repeat(size) {
			instance_create_layer(cordinate_x+(variable_1*tempObject.sprite_width),cordinate_y+(variable_2*tempObject.sprite_height),tileLayer,tempObject);
			variable_2++;
		}
		variable_1++;
	}
}