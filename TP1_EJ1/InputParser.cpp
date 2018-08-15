
#include "InputParser.h"
#include "Output.h"


bool InputParser(int argc, char* argv[], PuntoFijo punto_fijo_)
{
#ifdef DEBUG
	std::cout << "ENTRA al parser" << std::endl;
#endif // DEBUG
		if (argc == 4)
		{
#ifdef DEBUG
			std::cout << "argc = 4 OK" <<std::endl;
#endif // DEBUG

			if (strcmp(argv[1], "0")==0)
			{
#ifdef DEBUG
				std::cout << "No signado" << std::endl;
#endif // DEBUG
				punto_fijo_.signado = false;
				if (ItIsBinary(argv[2]))
				{
					if (ItIsBinary(argv[3]))
					{
						punto_fijo_.parteEntera = argv[2];
						punto_fijo_.parteFraccionaria = argv[3];
						return true;
					}
					else
						return false;
				}
				else
				{
#ifdef DEBUG
					std::cout << "argv[2] interpretado como no binario" << std::endl;
#endif // DEBUG
					return false;
				}
			}
			else if (strcmp(argv[1], "1")==0)
			{
#ifdef DEBUG
				std::cout << "Signado" << std::endl;
#endif // DEBUG
				punto_fijo_.signado = true;
				if (ItIsBinary(argv[2]))
				{
					if (ItIsBinary(argv[3]))
					{
						punto_fijo_.parteEntera = argv[2];
						punto_fijo_.parteFraccionaria = argv[3];
						return true;
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
				//showError();
				//inputError = true;
			}

		}
		else
		{
			return false;
			//showError();
			//inputError = true;
		}
	//} while (inputError == true);
}

bool ItIsBinary(char* sequence)
{
	int i = 0;
	while (sequence[i] != NULL)
	//while(i < (sequence.size()))
	{
		if ((sequence[i] != '0') && (sequence[i] != '1'))
		{
			return false;
		}
		else
		{
			i++;
		}
	}
	return true;
}