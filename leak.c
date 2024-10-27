#include <stdlib.h>

int main(void)
{
	int *not_freed = malloc(sizeof(int) * 4096);
	not_freed = NULL;
	return 0;
}
