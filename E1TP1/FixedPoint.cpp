/////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////// FixedPoint SOURCE ////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
#include "FixedPoint.h"
#include <iostream>
#include <math.h>

////////////////////////////////// Set Integer Part /////////////////////////////////////////	
void FixedPoint::setIntegerPart(char* secuencia)
{
	integerPart = secuencia;
#ifdef DEBUG
	std::cout << "parte Entera: " << integerPart << std::endl;
	std::cout << "parte Entera SIZE: " << toInt(integerPart) << std::endl;
#endif // DEBUG
}

////////////////////////////////// Set Fractional Part ///////////////////////////////////////	
void FixedPoint::setFractionalPart(char* secuencia)
{
	fractionalPart = secuencia;
#ifdef DEBUG
	std::cout << "parte Fraccionaria: " << fractionalPart << std::endl;
	std::cout << "parte Fraccionaria SIZE: " << toInt(fractionalPart) << std::endl;
	std::cout << "potencia: " << pow(2,toInt(fractionalPart)) << std::endl;
	std::cout << "future resolution: " << 1.0 / pow(2,toInt(fractionalPart)) << std::endl;
#endif // DEBUG
}

////////////////////////////////////// Set Resolution /////////////////////////////////////////	
void FixedPoint::setResolution()
{
	if (toInt(fractionalPart) == 0)
	{
		if (toInt(integerPart) == 0)
			resolution = 0;
		else
			resolution = 1;
	}
	else
		resolution = 1.0000 / pow(2, toInt(fractionalPart));
#ifdef DEBUG
	std::cout << "RES: " << resolution << std::endl;
#endif // DEBUG
}

//////////////////////////////////////// Set Range //////////////////////////////////////////	
void FixedPoint::setRange()
{
	double max = 0;
	double min = 0;
	range = 0;
	int i;

#ifdef DEBUG
	std::cout << "ENTRA a setRange" <<  std::endl;
	std::cout << "parte entera SIZE:" << toInt(integerPart)<<std::endl;
	std::cout << "parte fracc SIZE: " << toInt(fractionalPart)<< std::endl;
#endif // DEBUG
	unsigned int integerPartInInt = toInt(integerPart);
#ifdef DEBUG
	std::cout << "INTEGER PART IN INT: " << integerPartInInt << std::endl;
#endif //DEBUG
	unsigned int fractionalPartInInt = toInt(fractionalPart);
	if (signado)
	{
		if (integerPartInInt != 0)
		{
			for (i = 0; i < (integerPartInInt - 1); i++)
			{
				max = max + pow(2, i);
			}	
		}
		for (i = 1; i <= fractionalPartInInt; i++)
		{
			max = max + 1.0/pow(2,i);
		}
		if (integerPartInInt != 0)
		{
			min = -(pow(2, (integerPartInInt - 1)));
		}
		else if (fractionalPartInInt != 0)
		{
			min = -0.5;
		}
		 
#ifdef DEBUG
		std::cout << "max" << max << std::endl;
		std::cout << "min" << min << std::endl;
#endif // DEBUG
	}
	else
	{
		for (i = 0; i < integerPartInInt; i++)
		{
			max = max + pow(2,i);
		}
		for (i = 0; i < fractionalPartInInt; i++)
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

////////////////////////////////////// Get Resolution ////////////////////////////////////////	
double FixedPoint::getResolution()
{
	return resolution;
}

//////////////////////////////////////// Get Range ///////////////////////////////////////////	
double FixedPoint::getRange()
{
	return range;
}

////////////////////////////////////////// To Int ////////////////////////////////////////////	
unsigned int FixedPoint::toInt(string sequence)
{
	unsigned int inInts = 0;
	unsigned int i = 0;
	while (sequence[i] != NULL)
	{
		if ((sequence[i] >= 48) && (sequence[i] <= 57))
		{
			inInts = (inInts * 10) + (sequence[i] - 48);
		}
		else
		{
			inInts = 0;
			return inInts;
		}
			i++;
	}
#ifdef DEBUG
	std::cout << "inInts: " << inInts << std::endl;
#endif // DEBUG

	return inInts;
}

