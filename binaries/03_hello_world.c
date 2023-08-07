// cl /MD /Od /Zi /FA 03_hello_world.c
// gcc -g -m32 -O0 03_hello_world.c -o 03_hello_world.out
// cl /MD /Od /Zi /FA /Fa03_hello_world_x64 /Fe03_hello_world_x64 /Fo03_hello_world_x64 03_hello_world.c
// gcc -g -O0 03_hello_world.c -o 03_hello_world_x64.out

#include <stdio.h>

int main() 
{
	printf("hello, world\n");
	return 0;
}