#pragma once
#include <vector>
#include <string>
//#define DEBUG
using namespace std;

class PuntoFijo
{
public:
	bool signado;
	string parteEntera;
	string parteFraccionaria;
	float resolution;
	double range;

	void setParteEntera(char* secuencia);
	void setParteFraccionaria(char*secuencia);
	int toInt(string secuencia);
	void setResolution();
	void setRange();
	double getResolution();
	double getRange();
private:
};