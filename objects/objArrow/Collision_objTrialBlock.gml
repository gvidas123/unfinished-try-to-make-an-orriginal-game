/// @description Insert description here
// You can write your code in this editor
// In the projectile object's collision event with the wall

	if (!place_free(x,y-(8+(abs(cos(direction)*speed))/2))||!place_free(x,y+(8+abs(cos(direction)*speed)))) { //Horizontal Colision
		direction = -direction;
	}
	
	if ((!place_free(x+(8+(abs(sin(direction))*speed)),y)||!place_free(x-(8+(abs(sin(direction))*speed)),y))) { //Vertical Collionion
		direction = -direction + 180;
	}
