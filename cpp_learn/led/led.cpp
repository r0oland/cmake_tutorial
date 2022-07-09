#include "led.h"

led::led(const port_type p, const bval_type b) : port(p), bval(b) {
  // set port pin to value low
  *reinterpret_cast<volatile port_type*>(port) &= static_cast<bval_type>(~bval);

  const port_type pdir = port - 1U;

  // set port pin to output
  *reinterpret_cast<volatile bval_type*>(pdir) |= bval;
}

void led::toggle() const {
  // toggle port pin
  *reinterpret_cast<volatile bval_type*>(port) ^= bval;
}