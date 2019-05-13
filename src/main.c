#include "func.h"
#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int main()
{
	float x1, x2, y1, y2, r1, r2;
	printf("Circle №1 : ");
	scanf("%f%f%f",&x1 ,&y1 ,&r1);

	printf("Circle №2 : ");
	scanf("%f%f%f",&x2 ,&y2 ,&r2);

	float r = 0, peresechenie = 0;

Math (x1, y1, r1, x2, y2, r2);

	printf("\n 1|Circle (%5.2f %5.2f %5.2f)", x1, y1, r1);
	printf("\n Perimetr = %5.2f", 2*3.14*r1);
	printf("\n Plochad = %5.2f", 3.14*r1*r1);

	if (r >= peresechenie) printf("\n Peresekaetsa s Circle №2");
		else printf ("\n  Ne peresekaetsa");

	printf("\n 2|Circle (%5.2f %5.2f %5.2f)", x2, y2, r2);
	printf("\n Perimetr = %5.2f", 2*3.14*r2);
	printf("\n Plochad = %5.2f", 3.14*r2*r2);

	if (r >= peresechenie) printf("\n Peresekaetsa s Circle №1 \n ");
		else printf ("\n  Ne peresekaetsa\n ");

return 0;
}
