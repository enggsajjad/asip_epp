#include "string.h"

void strcpy(char* s, const char* t) {
  while ((*s++ = *t++) !='\0')
    ;
}

int strcmp(const char* s, const char* t) {
  for ( ; *s == *t; s++, t++)
    if (*s == '\0')
      return 0;
  return *s - *t;
}

int strlen(const char* s) {
  const char* p = s;
  while (*p != '\0')
    p++;
  return p - s;
}

char* index(char* s, int c) {
  for ( ; *s!= '\0'; s++) {
    if (*s == c)
      return s;
  }
  return 0;
}
