// A simple program that computes the square root of a number
#include <cmath>
#include <iostream>
#include <string>

#include "Config.h"

// should we include the MathFunctions header?
#ifdef USE_LED
  #include "led.h"
#endif

int main(int argc, char* argv[]) {
  std::cout << " Version " << VERSION_MAJOR << "." << VERSION_MINOR
            << std::endl;

  // get an object of class led
  const led led1{0x20, 0x04};

  return 0;
}
