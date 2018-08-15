
#include "PuntoFijo.h"
#include <iostream>
#include <math.h>



void PuntoFijo::setParteEntera(char* secuencia)
{
	parteEntera = secuencia;
#ifdef DEBUG
	std::cout << "parte Entera: " << parteEntera << std::endl;
	std::cout << "parte Entera SIZE: " << parteEntera.size() << std::endl;
#endif // DEBUG
}

void PuntoFijo::setParteFraccionaria(char* secuencia)
{
	parteFraccionaria = secuencia;
#ifdef DEBUG
	std::cout << "parte Fraccionaria: " << parteFraccionaria << std::endl;
	std::cout << "parte Fraccionaria SIZE: " << parteFraccionaria.size() << std::endl;
	std::cout << "potencia: " << pow(2,parteFraccionaria.size()) << std::endl;
	std::cout << "futuro resolution: " << 1.0 / pow(2,parteFraccionaria.size()) << std::endl;
#endif // DEBUG
}

void PuntoFijo::setResolution()
{
	resolution = 1.0 / pow(2,parteFraccionaria.size());
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
	std::cout << "parte entera SIZE:" << parteEntera.size()<<std::endl;
	std::cout << "parte fracc SIZE: " << parteFraccionaria.size()<< std::endl;
#endif // DEBUG

	if (signado)
	{
		for (i = 0; i < (parteEntera.size() - 1); i++)
		{
			max = max + pow(2,i);
		}
		for (i = 1; i <= parteFraccionaria.size(); i++)
		{
			max = max + 1.0/pow(2,i);
		}
		min = -(pow(2,(parteEntera.size() - 1)));
#ifdef DEBUG
		std::cout << "max" << max << std::endl;
		std::cout << "min" << min << std::endl;
#endif // DEBUG
	}
	else
	{
		for (i = 0; i < parteEntera.size(); i++)
		{
			max = max + pow(2,i);
		}
		for (i = 0; i < parteFraccionaria.size(); i++)
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