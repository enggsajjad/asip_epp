
char stringResult[32];

int main() {
  stringResult[0] = '\0';
  strcat(stringResult, itoa(23));
  strcat(stringResult, ", ");
  strcat(stringResult, itoa(42));
  return 0;
}
