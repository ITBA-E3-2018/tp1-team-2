#include "Output.h"


void showError(void)
{
	cout << "Error en los comandos ingresados."; cout << endl;
	cout << "Recuerde que debe ingresar unicamente 3 argumentos:"; cout << endl; cout << endl;
	cout << "Primer argumento: 1 (signado) o 0 (no signado)"; cout << endl;
	cout << "Segundo argumento: parte entera de un número en binario, en punto fijo."; cout << endl;
	cout << "					Debe ser una secuencia de ceros y unos"; cout << endl; cout << endl;
	cout << "Tercer argumento: parte entera de un número en binario, en punto fijo."; cout << endl;
	cout << "					Debe ser una secuencia de ceros y unos"; cout << endl; cout << endl;
	//VER si poner lo que sigue o darle la posibilidad a la persona de reingresar cosas
	getchar();
}

void showResolution(double resolution)
{
	//cout.precision(5);
	//std::cout << "Resolucion: " << fixed <<resolution << std::endl;
	std::cout << "Resolucion: " << resolution << std::endl;
}

void showRange(double range)
{
	std::cout << "Rango: " << range << std::endl;
}

void showAnswer(bool signado, double resolution, double range)
{
	if (signado)
		std::cout << "Interpretacion en signado:"<< std::endl << std::endl;
	else
		std::cout << "Interpretacion en No signado:" << std::endl << std::endl;
	std::cout << "Resolucion: " << resolution << std::endl;
	std::cout << "Rango: " << range << std::endl;
}
