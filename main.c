#include "includes/libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(void)
{
    printf("test\n");
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

    // read/write
    char buf[10] = {0};
    ft_read(0, buf, 10);
    ft_write(1, buf, ft_strlen(buf));

    // strdup
    char *dup = ft_strdup(str);
    printf("dup: %s\n", dup);
    free(dup);

    return (0);
}
