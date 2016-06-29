/*
** string.c for test in /home/desmar_s/rendu/asm_minilibc/test
** 
** Made by Desmars
** Login   <desmar_s@epitech.net>
** 
** Started on  Thu Mar 27 10:57:56 2014 Desmars
** Last update Thu Mar 27 10:59:00 2014 Desmars
*/

void		my_putchar(char c)
{
  write(1, &c, 1);
}

void		my_putstr(char *str)
{
  int		i;

  i = 0;
  while (str[i])
    my_putchar(str[i++]);
}
