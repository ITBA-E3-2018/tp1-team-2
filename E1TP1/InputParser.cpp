/////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////// InputParser SOURCE ///////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////// 
#include "InputParser.h"
#include "Output.h"

//////////////////////////////////////// Input Parser ////////////////////////////////////////	
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
						fixed_point_.integerPart = argv[2];		//this information is saved in a fixed point's class and
						fixed_point_.fractionalPart = argv[3];
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
						fixed_point_.integerPart = argv[2];		//this information is saved in a fixed point's class and
						fixed_point_.fractionalPart = argv[3];
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
bool ItIsPossitiveInteger(char* sequence)
{
	unsigned long j = 0;
	while (sequence[j] != NULL)
	{
		j++;
		if (j > 10) //because the maximum unsigned int value is 4294967295 which is composed by 10 digits.
			return false;
	}


	int i = 0;
	while (sequence[i] != NULL)
	{
		if ((sequence[i] < '0') || (sequence[i] > '9'))		//If a character is not a number,
		{
			return false;									//it returns a false because the sequence 
		}													//doesn't represent a possitive integer.
		else
		{
			i++;
		}
	}
	//return true;											//If all the characters of the string are numbers,
															//it returns true because the sequence 
															//represents a possitive integer.

	//_______________________________
	unsigned long inInts = 0;
	unsigned int k = 0;
	while (sequence[k] != NULL)
	{
		if ((sequence[k] >= 48) && (sequence[k] <= 57))
		{
			inInts = (inInts * 10) + (sequence[k] - 48);
		}
		else
		{
			inInts = 0;
			return inInts;
		}
		k++;

		if ((sequence[k + 1] != NULL) && (inInts == 4294967294)) //an unsigned long can go up to 4294967295
		{
			return false;
		}
	}
	return true;
}