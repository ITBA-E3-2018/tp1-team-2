
#include "PuntoFijo.h"
#include <iostream>
#include <math.h>


void PuntoFijo::setParteEntera(char* secuencia)
{
	parteEntera = secuencia;
#ifdef DEBUG
	std::cout << "parte Entera: " << parteEntera << std::endl;
	//std::cout << "parte Entera SIZE: " << parteEntera.size() << std::endl;
	std::cout << "parte Entera SIZE: " << toInt(parteEntera) << std::endl;
#endif // DEBUG
}

void PuntoFijo::setParteFraccionaria(char* secuencia)
{
	parteFraccionaria = secuencia;
#ifdef DEBUG
	std::cout << "parte Fraccionaria: " << parteFraccionaria << std::endl;
	//std::cout << "parte Fraccionaria SIZE: " << parteFraccionaria.size() << std::endl;
	std::cout << "parte Fraccionaria SIZE: " << toInt(parteFraccionaria) << std::endl;
	std::cout << "potencia: " << pow(2,toInt(parteFraccionaria)) << std::endl;
	std::cout << "futuro resolution: " << 1.0 / pow(2,toInt(parteFraccionaria)) << std::endl;
#endif // DEBUG
}

void PuntoFijo::setResolution()
{
	//resolution = 1.0 / pow(2,getParteFracciona); //CAMBIO ACA
	resolution = 1.0 / pow(2, toInt(parteFraccionaria));
#ifdef DEBUG
	std::cout << "RES: " << resolution << std::endl;
#endif // DEBUG
}

void PuntoFijo::setRange()
{
	double max = 0;
	double min = 0;
	range = 0;
	int i;

#ifdef DEBUG
	std::cout << "ENTRA a setRange" <<  std::endl;
	//std::cout << "parte entera SIZE:" << parteEntera.size()<<std::endl;
	//std::cout << "parte fracc SIZE: " << parteFraccionaria.size()<< std::endl;
	std::cout << "parte entera SIZE:" << toInt(parteEntera)<<std::endl;
	std::cout << "parte fracc SIZE: " << toInt(parteFraccionaria)<< std::endl;
#endif // DEBUG

	if (signado)
	{
		//for (i = 0; i < (parteEntera.size() - 1); i++) //CAMBIO ACA
		for (i = 0; i < (toInt(parteEntera)- 1); i++)
		{
			max = max + pow(2,i);
		}
		//for (i = 1; i <= parteFraccionaria.size(); i++) //CAMBIO ACA
		for (i = 1; i <= toInt(parteFraccionaria); i++)
		{
			max = max + 1.0/pow(2,i);
		}
		//min = -(pow(2,(parteEntera.size() - 1))); //CAMBIO ACA
		min = -(pow(2, (toInt(parteEntera) - 1)));

#ifdef DEBUG
		std::cout << "max" << max << std::endl;
		std::cout << "min" << min << std::endl;
#endif // DEBUG
	}
	else
	{
		//for (i = 0; i < parteEntera.size(); i++) //CAMBIO ACA
		for (i = 0; i < toInt(parteEntera); i++)
		{
			max = max + pow(2,i);
		}
		//for (i = 0; i < parteFraccionaria.size(); i++) //CAMBIO ACA
		for (i = 0; i < toInt(parteFraccionaria); i++)
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

double PuntoFijo::getResolution()
{
	return resolution;
}

double PuntoFijo::getRange()
{
	return range;
}

int PuntoFijo::toInt(string secuencia)
{
	int inInts = 0;
	int i = 0;
	while (secuencia[i] != NULL)
	{
		if ((secuencia[i] >= 48) && (secuencia[i] <= 57))
		{
			inInts = inInts + (secuencia[i] - 48);
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

