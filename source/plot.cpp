#include "plotter.h"
#include "feeder.h"

int main(int argc, char ** argv) {
  // call a function in another file
  myPrintHelloMake();
  feed();
  
  x00 *x = new x00( argc, argv );
  delete x;
	
  return(0);
}