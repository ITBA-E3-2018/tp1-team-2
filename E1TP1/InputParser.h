/////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////// InputParser SOURCE ///////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
#pragma once
#include "FixedPoint.h"
#include <string>
//#define DEBUG
#define UNSIGNED_INT_16BITS
//#define UNSIGNED_INT_32BITS
//#define UNSIGNED_INT_64BITS

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
bool InputParser(int argc, char* argv[], FixedPoint punto_fijo_);

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
bool ItIsPossitiveInteger(char* sequence);