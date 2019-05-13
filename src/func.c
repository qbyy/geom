#include "func.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float peresechenie = 0, r = 0;

void Math (float x1, float y1, float r1, float x2, float y2, float r2)
{
	r = r1 + r2;
	peresechenie = sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));
}

