#include <iostream>
#include <cinttypes>

using namespace std;

int main(int argc, char** argv) {
  cout << "You have entered " << argc << " arguments:"
       << "\n";

  for (int i = 0; i < argc; ++i)
    cout << argv[i] << "\n";

  // parse the input arguments to integers values
  int8_t a = std::stoi(argv[1]);
  int8_t b = std::stoi(argv[2]);

  cout << "a=" << argv[1] << "\n";
  cout << "b=" << argv[2] << "\n";

  // function to get gcd of two values
  while (a != b) {
    if (a > b) {
      a = a - b;
    } else {
      b = b - a;
    }
    cout << "temp=" << std::to_string(a) << "\n";
  }


  // cout value of a and b
  cout << "gcd=" << std::to_string(a) << "\n";
  cout <<  std::to_string(INT_LEAST32_WIDTH) << "\n";

  return 0;
}
