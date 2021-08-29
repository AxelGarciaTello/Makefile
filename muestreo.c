#include <stdio.h>
#include "archivos.h"
#include "defs.h"
#include "procesamiento.h"

int main()
{
	float seno[N];

	generarSeno(seno);
	guardaMuestras(seno);

	return 0;
}


