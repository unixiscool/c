#include <stdio.h>

int main() {
  float fahr, celsius;
  int lower, upper, step;

  lower = 0;  /* нижняя граница таблицы температур */
  upper = 300; /* верхняя граница */
  step = 20; /* верхняя граница */

  fahr = lower;
  printf("печать таблицы температур по Фаренгейту и Цельсию \n");
  while (fahr <= upper) {
  //(2)160 / 9 = 17   //(1) -32
    celsius = 5 * (fahr-32) / 9;
    celsius = (5.0 / 9.0) * (fahr-32.0);
    printf("%3.0f \t %6.1f \n", fahr, celsius);
    fahr = fahr + step;
  }
  
  int res = 34 - 15 / 3 + (7 - 5) + 7; 
  printf("%d\n", res);
}
