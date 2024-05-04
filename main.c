#include "includes/libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(void)
{
    // strlen
    printf("---------- STRLEN ----------\n");
    char str[5] = "test";
    printf("ft_strlen(str): %ld\n", ft_strlen(str));
    printf("strlen(str): %ld\n", strlen(str));

    // strcpy
    printf("---------- STRCPY ----------\n");
    char cpy1[5];
    char cpy2[5];
    ft_strcpy(cpy1, str);
    printf("ft_strcpy: %s\n", cpy1);
    strcpy(cpy2, str);
    printf("ft_strcpy: %s\n", cpy2);

    // strcmp
    printf("---------- STRCMP ----------\n");
    str[2] = 'a';
    printf("str: %s - cpy1: %s - ft_strcmp(str, cpy1): %d\n", str, cpy1,
           ft_strcmp(str, cpy1));
    printf("str: %s - cpy1: %s - strcmp(str, cpy1): %d\n", str, cpy1,
           strcmp(str, cpy1));
    printf("ft_strcmp("", ""): %d\n", ft_strcmp("", ""));
    printf("strcmp("", ""): %d\n", strcmp("", ""));

    // read/write
    printf("---------- READ/WRITE ----------\n");
    char buf1[10] = {0};
    printf("ft_read:\n");
    read(0, buf1, 10);
    printf("ft_write:\n");
    write(1, buf1, ft_strlen(buf1));
    char buf2[10] = {0};
    printf("read:\n");
    read(0, buf2, 10);
    printf("write:\n");
    write(1, buf2, strlen(buf2));

    // strdup
    printf("---------- STRDUP ----------\n");
    char *dup = ft_strdup(str);
    printf("ft_strdup: %s\n", dup);
    free(dup);
    dup = strdup(str);
    printf("strdup: %s\n", dup);
    free(dup);

    return (0);
}
