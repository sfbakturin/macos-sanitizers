#include <array>

int main()
{
	std::array<int, 100> arr = { 0 };
	int x = arr[1024];
	return x;
}
