/*
** main.c for test in /home/desmar_s/rendu/asm_minilibc/test
** 
** Made by Desmars
** Login   <desmar_s@epitech.net>
** 
** Started on  Thu Mar 27 10:56:31 2014 Desmars
** Last update Thu Mar 27 17:12:26 2014 Desmars
*/

#include	<stdio.h>
#include	<string.h>
#include	<stdlib.h>

int		main(int ac, char **av)
{
  /* printf("TRUE => %d \n MINE => %d \n", strlen("it's works\n"), my_strlen("it's works\n")); */
  /* printf("TRUE => %d \n MINE => %d \n", strlen(""), my_strlen("")); */
  /* printf("TRUE => %d \n MINE => %d \n", strlen("\0"), my_strlen("\0")); */
  printf("STRLEN OK \n");
  
  /* printf("TRUE => %s \n MINE => %s \n", strchr("bob", 'o'), my_strchr("bob", 'o')); */
  /* printf("TRUE => %s \n MINE => %s \n", strchr("PoP", 'b'), my_strchr("PoP", 'b')); */
  printf("STRCHR OK \n");
  
  /* char	*tab; */
  /* tab = malloc(500 * sizeof(char)); */
  /* tab = memcpy(tab, "azertyuiop", 2); */
  
  /* char	*tab2; */
  /* tab2 = malloc(500 * sizeof(char)); */
  /* tab2 = my_memcpy(tab2, "azertyuiop", 2); */
  /* printf("TRUE => %s \n MINE => %s \n", tab, tab2); */
  printf("MEMCPY FAIL \n");
  
  /* printf("TRUE => %s \nMINE => %s \n", rindex("boboavtr", 'o'), my_rindex("boboavtr", 'o')); */
  /* printf("TRUE => %s \nMINE => %s \n", rindex("boboavtr", 'z'), my_rindex("boboavtr", 'z')); */
  printf("RINDEX OK \n");

  /* printf("TRUE => %d \nMINE => %d \n", strcmp("abc", "cbc"), my_strcmp("cbc", "abc")); */
  /* printf("TRUE => %d \nMINE => %d \n", strcmp("boboavtr", "boboavtr"), my_strcmp("boboavtr", "boboavtr")); */
  /* printf("TRUE => %d \nMINE => %d \n", strcmp("", ""), my_strcmp("", "")); */
  printf("STRCMP  OK \n");

  /* printf("TRUE => %d \nMINE => %d \n", strncmp("abc", "cbc", 4), my_strncmp("cbc", "abc", 4)); */
  /* printf("TRUE => %d \nMINE => %d \n", strncmp("boboavtr", "bocoavtr", 4), my_strncmp("boboavtr", "bocoavtr", 4)); */
  /* printf("TRUE => %d \nMINE => %d \n", strncmp("", "", 0), my_strncmp("", "", 0)); */
  printf("STRNCMP  OK \n");
  
  printf("TRUE => %d \nMINE => %d \n", strcasecmp("abc", "Abc"), my_strcasecmp("abc", "Abc"));
  /* printf("TRUE => %d \nMINE => %d \n", strcasecmp("boboavtr", "bocoavtr"), my_strcasecmp("boboavtr", "bocoavtr")); */
  /* printf("TRUE => %d \nMINE => %d \n", strncmp("", "", 0), my_strncmp("", "", 0)); */
  printf("STRCASECMP  OK \n");

 /* memset(); */
  /* memmove(); */
  /* strstr(); */
  /* strpbrk(); */
  /* strcspn(); */
  
  return (0);
}
