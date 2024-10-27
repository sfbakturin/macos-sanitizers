int main()
{
	int *not_freed = new int[4096];
	not_freed = nullptr;
}
