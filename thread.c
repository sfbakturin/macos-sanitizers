#include <stdlib.h>

int main(int argc, char **argv) {
  for (int i = 0; i < argc; i++) {
    free(argv[i]);
  }
  free(argv);
  return 0;
}
