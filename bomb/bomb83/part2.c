#include <stdio.h>

int main(int argc, char* argv)
{
	int _t17 = 1;
	int _t14;
	int arr[6] = {1, 2, 4, 7, 11, 16};
	do
	{
		if( *(int*)(arr + _t17) != _t17 +  *((int*)(arr - 1 + _t17)))
		{
			puts("sdkfskfhskdjf");
		}
		else
		{
			puts("heh");
		}
		_t17 = _t17 + 1;
	}
	while(_t17 != 6);

	return 0;
}