#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

void	*malloc(size_t size)
{
  void	*p;

  p = sbrk(0);
  if (sbrk(size) == NULL)
    return (NULL);
  else
    return (p);
}
/*
int	main()
{
  char	*lol = "sulmanbashirepiteklol";
  char	*lol2;
  char	i = 0;
  int	count = 0;

  count = strlen(lol);
  lol2 = malloc(count);
  while (lol[i] != '\0')
    {
      lol2[i] = lol[i];
      i++;
    }
  lol2[i] = '\0';
  printf("%s\n", lol2);
}
*/
