
/////////////////////////////////////////////////////////////////////////////////////////////	
//
// Instituto Tecnologico de Buenos Aires						AUG - 2018
//
// ELECTRONICA 3 - TP1 - Excercise 1
// By Group 2.
//
//
// 						 ///////////////////////////////////////////////////////////////////
// 						//	   Resolution and range of a fixed point binary number.
// 					   /////////////////////////////////////////////////////////////////////
//
//
// 
// This program receives from command prompt:
//   - 1st argument: 1 (indicating that the numeric representation of the binary number is
//					 signed) or 0 (indicating that the representation is unsigned).
//   - 2nd argument: a possitive integer (indicating the number of bits corresponding to the
//					 integer part of the number, which is the part before the decimal point).
//   - 3rd argument: a possitive integer (indicating the number of bits corresponding to the 
//					 part of the number that goes after the decimal point).
//
/////////////////////////////////////////////////////////////////////////////////////////////

#include "FixedPoint.h"
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
	}
	else
		showError();

	getchar();
}





