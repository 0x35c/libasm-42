#include <stdio.h>

size_t ft_strlen(const char *str);

int main(void) {
  const char *str = "test\n";
  printf("ft_strlen(str): %ld\n", ft_strlen(str));
  return (0);
}
