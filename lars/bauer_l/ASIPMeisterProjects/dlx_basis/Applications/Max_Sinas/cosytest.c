void  main() {
  char tempString[100];
  char* p = &tempString;
  int i, j;

  
  printf("__1\n");
  for (i=0; i<4;i++) {
    printf("__2\n");
	  j = sprintf(p, "blabla%i ", i);
	  printf("__%i\n", j);
	  p += j;
  }
  sprintf(p, "\0");
  printf("\"%s\"\n", tempString);
}
