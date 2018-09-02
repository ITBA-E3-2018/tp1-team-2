
#include "Output.h"

////////////////////////////////// ItIsPossitiveInteger /////////////////////////////////////	
//
// This function prints an error message, meaning that the input argument weren't correct.
//
// The function receives:
// * (nothing)
//
// The function returns:
// * (nothing)
//
/////////////////////////////////////////////////////////////////////////////////////////////
void showError(void)
{
	cout << "An error was detected in your input."; cout << endl;
	cout << "Remember you must enter exactly three arguments:"; cout << endl; cout << endl;
	cout << "First argument: 1 (signed) or 0 (unsigned)"; cout << endl;
	cout << "Second argument: number of bits corresponding to the integer part of a fixed-point-binary-represented number."; cout << endl;
	cout <<	"					(This means the ammount of digits that go before the decimal point of a fixed point number)."; cout << endl;
	cout << "					You should enter a possitive and integer number."; cout << endl; cout << endl;
	cout << "Third argument: number of bits corresponding to the fractional part of a fixed-point-binary-represented number."; cout << endl;
	cout << "					(This means the ammount of digits that go after the decimal point of a fixed point number)."; cout << endl;
	cout << "					You should enter a possitive and integer number."; cout << endl; cout << endl;
	getchar();
}

////////////////////////////////// ItIsPossitiveInteger /////////////////////////////////////	
//
// This function prints the resolution and range of a fixed-point-binary-represented number.
//
// The function receives:
// * A boolean: 1 meaning signed and 0 meaning unsigned.
// * A double: the resolution.
// * A double: the range.
//
// The function returns:
// * (nothing)
//
/////////////////////////////////////////////////////////////////////////////////////////////
void showAnswer(bool signado, double resolution, double range)
{
	if (signado)
		std::cout << "Signed interpretation:"<< std::endl << std::endl;
	else
		std::cout << "Unsigned interpretation:" << std::endl << std::endl;
	std::cout << "Resolution: " << resolution << std::endl;
	std::cout << "Range: " << range << std::endl;
}
