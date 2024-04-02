#include "includes/libasm.h"
#include <stdio.h>
#include <string.h>

int main(void)
{
	// strlen
	char str[5] = "test";
	printf("ft_strlen(str): %ld\n", ft_strlen(str));

	// strcpy
	char cpy[5];
	ft_strcpy(cpy, str);
	printf("cpy: %s\n", cpy);

	// strcmp
	str[2] = 'a';
	printf("str: %s - cpy: %s - ft_strcmp(str, cpy): %d\n", str, cpy,
	       ft_strcmp(str, cpy));

	// write
	ft_write(1, str, ft_strlen(str));

	// read

	// strdup

	return (0);
}
