#ifndef ___align_54753675685471578
#define ___align_54753675685471578

char* align(const char* input, int size, int alignment) {
  char *result, *temp;
  const char* const_temp;
  int i, j, input_length;

  result = (char*)malloc( (size+1)*sizeof(char));
  if (input==0) {  /* catch the case, that the input string is null */
    for (i=0; i<size; i++) *temp++ = ' ';
    *temp = '\0';
    return result;
  }

  const_temp = input;
  input_length = 0;
  while(*const_temp++) input_length++;

  temp = result;
  if (size<input_length) {
    printf("WARNING: At Method \"Align\" the Input-String (\"%s\") is longer than given size (%i) !\n", input, size);
    for (i=0; i<size; i++) *temp++ = *input++;
    *temp = '\0';
    return result;
  }

  switch (alignment) {
  case -1:
    for (i=0; i<input_length; i++) *temp++ = *input++;
    for (   ; i<size;         i++) *temp++ = ' ';
    break;
  case 0:
    for (i=0; i<(size-input_length)/2; i++     ) *temp++ = ' ';
    for (j=0; j<input_length;          i++, j++) *temp++ = *input++;
    for (   ; i<size;                  i++     ) *temp++ = ' ';
    break;
  case 1:
    for (i=0; i<size-input_length; i++) *temp++ = ' ';
    for (   ; i<size;              i++) *temp++ = *input++;
    break;
  default:
    printf("At Method \"Align\": Wrong parameter for alignment!\n");
    break;
  }
  *temp = '\0';
  return result;
}


#endif
