#include <stdio.h>
#define IN 1
#define OUT 0
int main() {
  int c, nl, nw, nc, state;
  state = OUT;
  nl = nw = nc = 0;
  while ((c = getchar()) != EOF) {
    ++nc; //symbol
    if (c == '\n')
      ++nl; //new string
    if (c == ' ' || c == '\n' || c == '\t')
      state = OUT;
    else if (state == OUT) {
      state = IN;
      ++nw; //word counter
    }
    
  }
  printf("%d %d %d\n", nl, nw, nc);
}
