
#include "PuntoFijo.h"
#include "InputParser.h"
#include "Output.h"
#include <iostream>
#include <string.h>


int main(int argc, char* argv[])
{
#ifdef DEBUG
	std::cout << "argc: " << argc << std::endl;
	std::cout << "argv[1]: " << argv[1] << std::endl;
	std::cout << "argv[2]: " << argv[2] << std::endl;
	std::cout << "argv[3]: " << argv[3] << std::endl;
#endif // DEBUG

	PuntoFijo punto_fijo;

	bool inputIsOk = InputParser(argc, argv, punto_fijo);

	if (inputIsOk)
	{
		punto_fijo.setParteEntera(argv[2]);
		punto_fijo.setParteFraccionaria(argv[3]);
		punto_fijo.setResolution();
		punto_fijo.setRange();
		showAnswer(punto_fijo.signado, punto_fijo.resolution, punto_fijo.range);
		//showResolution(punto_fijo.resolution);
		//showRange(punto_fijo.range);
	}
	else
		showError();

	getchar();
}





