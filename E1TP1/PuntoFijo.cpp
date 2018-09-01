
#include "FixedPoint.h"
#include <iostream>
#include <math.h>

////////////////////////////////// Set Integer Part /////////////////////////////////////////	
//
// Setter function: sets the variable integerPart of the class FixedPoint with the received value.
//
// The function receives:
// * A string of chars: the integer part of a fixed point number.
//
// The function returns:
// * (nothing)
//
/////////////////////////////////////////////////////////////////////////////////////////////
void FixedPoint::setIntegerPart(char* secuencia)
{
	integerPart = secuencia;
#ifdef DEBUG
	std::cout << "parte Entera: " << parteEntera << std::endl;
	std::cout << "parte Entera SIZE: " << toInt(parteEntera) << std::endl;
#endif // DEBUG
}

////////////////////////////////// Set Fractional Part ///////////////////////////////////////	
//
// Setter function: sets the variable fractionalPart of the class FixedPoint with the received value.
//
// The function receives:
// * A string of chars: the fractional part of a fixed point number.
//
// The function returns:
// * (nothing)
//
/////////////////////////////////////////////////////////////////////////////////////////////
void FixedPoint::setFractionalPart(char* secuencia)
{
	fractionalPart = secuencia;
#ifdef DEBUG
	std::cout << "parte Fraccionaria: " << parteFraccionaria << std::endl;
	std::cout << "parte Fraccionaria SIZE: " << toInt(parteFraccionaria) << std::endl;
	std::cout << "potencia: " << pow(2,toInt(parteFraccionaria)) << std::endl;
	std::cout << "future resolution: " << 1.0 / pow(2,toInt(parteFraccionaria)) << std::endl;
#endif // DEBUG
}

////////////////////////////////////// Set Resolution /////////////////////////////////////////	
//
// Setter function: sets the variable resolution of the class FixedPoint with
// resolution of the fixed-point-number's information from that same class.
//
// The function receives:
// * (nothing)
//
// The function returns:
// * (nothing)
//
/////////////////////////////////////////////////////////////////////////////////////////////
void FixedPoint::setResolution()
{
	resolution = 1.0 / pow(2, toInt(fractionalPart));
#ifdef DEBUG
	std::cout << "RES: " << resolution << std::endl;
#endif // DEBUG
}

//////////////////////////////////////// Set Range //////////////////////////////////////////	
//
// Setter function: sets the variable range of the class FixedPoint with
// range of the fixed-point-number's information from that same class.
//
// The function receives:
// * (nothing)
//
// The function returns:
// * (nothing)
//
/////////////////////////////////////////////////////////////////////////////////////////////
void FixedPoint::setRange()
{
	double max = 0;
	double min = 0;
	range = 0;
	int i;

#ifdef DEBUG
	std::cout << "ENTRA a setRange" <<  std::endl;
	std::cout << "parte entera SIZE:" << toInt(parteEntera)<<std::endl;
	std::cout << "parte fracc SIZE: " << toInt(parteFraccionaria)<< std::endl;
#endif // DEBUG

	if (signado)
	{
		for (i = 0; i < (toInt(integerPart)- 1); i++)
		{
			max = max + pow(2,i);
		}
		for (i = 1; i <= toInt(fractionalPart); i++)
		{
			max = max + 1.0/pow(2,i);
		}
		min = -(pow(2, (toInt(integerPart) - 1)));

#ifdef DEBUG
		std::cout << "max" << max << std::endl;
		std::cout << "min" << min << std::endl;
#endif // DEBUG
	}
	else
	{
		for (i = 0; i < toInt(integerPart); i++)
		{
			max = max + pow(2,i);
		}
		for (i = 0; i < toInt(fractionalPart); i++)
		{
			max = max + 1.0/pow(2,i);
		}
#ifdef DEBUG
		std::cout << "max" << max << std::endl;
		std::cout << "min" << min << std::endl;
#endif // DEBUG

	}
	range = max - min;
}

double FixedPoint::getResolution()
{
	return resolution;
}

double FixedPoint::getRange()
{
	return range;
}

int FixedPoint::toInt(string sequence)
{
	int inInts = 0;
	int i = 0;
	while (sequence[i] != NULL)
	{
		if ((sequence[i] >= 48) && (sequence[i] <= 57))
		{
			inInts = inInts + (sequence[i] - 48);
		}
		else
		{
			inInts = 0;
			return inInts;
		}
			i++;
	}
	return inInts;
}

