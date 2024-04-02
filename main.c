#include "includes/libasm.h"
#include <stdio.h>
#include <string.h>

int main(void) {
  const char *str = "test\n";
  char str2[6];
  ft_strcpy(NULL, str);
  printf("ft_strlen(str): %ld\n", ft_strlen(str));
  printf("str2: %s", str2);
  return (0);
}
