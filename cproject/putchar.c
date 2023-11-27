#include <stdio.h>

int main() {
  //long nc;
  //nc = 0;
  //while (getchar() != EOF)
    //++nc;
  //printf("%ld\n", nc);

  //double nc;
  //for (nc = 0; getchar() != EOF; ++nc)
    //;
  //printf("%0.f\n", nc);
  int c;
  int nl, tl, pl;
  tl = 0;
  nl = 0;
  while ((c = getchar()) != EOF)
    if (c == '\n') {
      ++nl;
      putchar('n');
    }
    else if (c == '\t') {
     ++tl;
     putchar('t');
    }
    else if (c == ' ') {
     ++pl;
     putchar(' ');
    }
  printf("\nnew strok -> %d \n tab -> %d\n probel -> %d\n", nl, tl, pl);
}
