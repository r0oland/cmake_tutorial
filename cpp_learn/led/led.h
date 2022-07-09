#include <cstdint> // for uint8_t

typedef std::uint8_t port_type;
typedef std::uint8_t bval_type;

class led {
public:
  led(const port_type p, const bval_type b);
  void toggle() const;

private:
  const port_type port;
  const bval_type bval;
};