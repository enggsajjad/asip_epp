
int strlen(const char* s) {
  int i=0;
  while(*s++ != '\0') i++;
  return i;
}

char* strcat(char* dest, const char* src) {
  while (*dest != '\0') dest++;
  while (*src != '\0') {
    *dest++ = *src++;
  }
  return dest;
}

char* strncat(char* dest, const char* src, int n) {
  int i=0;
  while (*dest != '\0') dest++;
  while (*src != '\0' && ++i < n) {
    *dest++ = *src++;
  }
  if (i==n) *dest = '\0';
  return dest;
}

char* strcpy(char* dest, const char* src) {
  while (*src != '\0') {
    *dest++ = *src++;
  }
  return dest;
}

char* strncpy(char* dest, const char* src, int n) {
  int i=0;
  while (*src != '\0' && ++i < n) {
    *dest++ = *src++;
  }
  if (i==n) *dest = '\0';
  return dest;
}

int strcmp(const char* s1, const char* s2) {
  while (*s1 != '\0' && *s2 != '\0') {
    if (*s1 < *s2) return -1;
    if (*s1 > *s2) return 1;
    s1++;
    s2++;
  }
  if (*s1 != '\0') return 1;
  if (*s2 != '\0') return -1;
  return 0;
}

int strncmp(const char* s1, const char* s2, int n) {
  int i=0;
  while (*s1 != '\0' && *s2 != '\0' && ++i < n) {
    if (*s1 < *s2) return -1;
    if (*s1 > *s2) return 1;
    s1++;
    s2++;
  }
  if (i==n) return 0;
  if (*s1 != '\0') return 1;
  if (*s2 != '\0') return -1;
  return 0;
}
