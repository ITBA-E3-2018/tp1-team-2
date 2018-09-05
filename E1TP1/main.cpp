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

#define DEBUG_IN_VISUAL_STUDIO

int main(int argc, char* argv[])
{
#ifdef DEBUG															//To check the input 
	std::cout << "argc: " << argc << std::endl;							
	std::cout << "argv[1]: " << argv[1] << std::endl;			
	std::cout << "argv[2]: " << argv[2] << std::endl;
	std::cout << "argv[3]: " << argv[3] << std::endl;
#endif // DEBUG

	FixedPoint fixed_point;
	bool inputIsOk = InputParser(argc, argv, fixed_point);				//Parses the input.

	if (inputIsOk)														//If the input is OK,
	{
		fixed_point.setIntegerPart(argv[2]);
		fixed_point.setFractionalPart(argv[3]);
		fixed_point.setResolution();
		fixed_point.setRange();
		showAnswer(fixed_point.signado, fixed_point.resolution, fixed_point.range); //The resolutino and range are shown
	}																				// through the output.
	else
		showError();													//Else, an error is shown.

#ifdef DEBUG_IN_VISUAL_STUDIO
	getchar();
#endif // DEBUG_IN_VISUAL_STUDIO
}





