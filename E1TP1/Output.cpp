/////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////// Output SOURCE /////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
#include "Output.h"

//////////////////////////////////////// show Error ////////////////////////////////////////	
void showError(void)
{
	cout << "------------------------------------"; cout << endl;
	cout << "An error was detected in your input."; cout << endl;
	cout << "Remember you must enter exactly three arguments:"; cout << endl; cout << endl;
	cout << "First argument: 1 (signed) or 0 (unsigned)"; cout << endl;
	cout << "Second argument: number of bits corresponding to the integer part of a fixed-point-binary-represented number."; cout << endl;
	cout <<	"	(This means the ammount of digits that go before the decimal point of a fixed point number)."; cout << endl;
	cout << "	You should enter a possitive and integer number, less or equal to 1000."; cout << endl; cout << endl;
	cout << "Third argument: number of bits corresponding to the fractional part of a fixed-point-binary-represented number."; cout << endl;
	cout << "	(This means the ammount of digits that go after the decimal point of a fixed point number)."; cout << endl;
	cout << "	You should enter a possitive and integer number, less or equal to 1000."; cout << endl;
	cout << "------------------------------------"; cout << endl; cout << endl;
	getchar();
}

///////////////////////////////////// show Answer //////////////////////////////////////////	
void showAnswer(bool signado, double resolution, double range)
{
	if (signado)
		std::cout << "Signed interpretation."<< std::endl;
	else
		std::cout << "Unsigned interpretation." << std::endl;
	std::cout << "Resolution: " << resolution << std::endl;
	std::cout << "Range: " << range << std::endl;
}
