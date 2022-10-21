/// @description Insert description here
// You can write your code in this editor
// In the projectile object's collision event with the wall

	if (!place_free(x,y-(8+1))||!place_free(x,y+(8+1))) { //Horizontal Colision
		direction = -direction
	
	}

	else if ( (!place_free(x+(8+1),y)||!place_free(x-(8+1),y))) { //Vertical Collionion
		
		direction = -direction + 180

	}
