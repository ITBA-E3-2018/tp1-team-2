 
#include "InputParser.h"
#include "Output.h"


//////////////////////////////////////// Input Parser ////////////////////////////////////////	
//
// This function checks if the input is correct according to what the program needs.
// The input must have been formed by EXACLTY three arguments: 
// -1st argument: 0 or 1.
// -2nd argument: A possitive integer.
// -3rd argument: A possitibe integer.
// This parser checks if those three arguments respect what is specified above. 
//
// The function receives:
//	* The number of arguments that are going to be analyzed in this parser.
//  * The arguments mentioned in the previous line.
//  * A class with the information of a fixed point number.
//
// The function returns:
// * 0: In case that the number of arguments is different to 3, or in case that
//    at least one of the three arguments doesn't correspond whith what is indicated above.
// * 1: In case the three arguments verify what is indicated above.
//
/////////////////////////////////////////////////////////////////////////////////////////////
bool InputParser(int argc, char* argv[], FixedPoint fixed_point_)
{
#ifdef DEBUG
	std::cout << "ENTRA al parser" << std::endl;
#endif // DEBUG
		if (argc == 4)											//It checks if the total ammount of arguments is 3.
		{
#ifdef DEBUG
			std::cout << "argc = 4 OK" <<std::endl;
#endif // DEBUG

			if (strcmp(argv[1], "0")==0)						//If the first argument is "0",
			{
#ifdef DEBUG
				std::cout << "Unsigned" << std::endl;		
#endif // DEBUG
				fixed_point_.signado = false;					//The representation is unsigned.
				if (ItIsPossitiveInteger(argv[2]))				//It the second argument is a possitive integer,
				{
					if (ItIsPossitiveInteger(argv[3]))			//and the third argument is a possitive integer,
					{
						fixed_point_.parteEntera = argv[2];		//this information is saved in a fixed point's class and
						fixed_point_.parteFraccionaria = argv[3];
						return true;							//the input is OK.
					}
					else
						return false;							
				}
				else
				{
#ifdef DEBUG
					std::cout << "argv[2] NO ES entero positivo." << std::endl;
#endif // DEBUG
					return false;
				}
			}
			else if (strcmp(argv[1], "1")==0)
			{
#ifdef DEBUG
				std::cout << "Signed" << std::endl;
#endif // DEBUG
				fixed_point_.signado = true;					//The representation is signed.
				if (ItIsPossitiveInteger(argv[2]))				//If the second argument is a possitive integer,
				{
					if (ItIsPossitiveInteger(argv[3]))			//and the third argument is a possitive integer,
					{
						fixed_point_.parteEntera = argv[2];		//this information is saved in a fixed point's class and
						fixed_point_.parteFraccionaria = argv[3];
						return true;							//the input is OK.
					}
					else
						return false;
				}
				else

					return false;
			}
			else
			{
#ifdef DEBUG
				std::cout << "Ni signado, ni No signado" << std::endl;
#endif // DEBUG
				return false;
			}

		}
		else
		{
			return false;
		}
}


////////////////////////////////// ItIsPossitiveInteger ////////////////////////////////////////	
//
// This function checks if a string represents a possitive integer. In other words, it verifies
// that each char of the string is a number. 
//
// The function receives:
// * A string of chars.
//
// The function returns:
// * 1: true, the string represents a possitive integer.
// * 0: false, the string doesn't correspond to a possitive integer.
//
/////////////////////////////////////////////////////////////////////////////////////////////
bool ItIsPossitiveInteger(char* sequence)
{
	int i = 0;
	while (sequence[i] != NULL)
	{
		if ((sequence[i] < '0') || (sequence[i] >'9'))		//If a character is not a number,
		{
			return false;									//it returns a false because the sequence 
		}													//doesn't represent a possitive integer.
		else
		{
			i++;
		}
	}
	return true;											//If all the characters of the string are numbers,
}															//it returns true because the sequence 
															//represents a possitive integer.