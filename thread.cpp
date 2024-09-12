#include <cstdlib>

int main(int argc, char **argv) {
  for (int i = 0; i < argc; i++) {
    std::free(argv[i]);
  }
  std::free(argv);
}
