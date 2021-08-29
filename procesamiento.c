#include <stdio.h>
#include <math.h>
#include "defs.h"

void generarSeno(float seno[])
{
	float f = 1000, fs = 40000;
	register int n;

	for(n = 0; n < N; n++)
	{
		seno[n] = sinf(2*M_PI*f*n/fs);
	}
}
