/* possibly int instead of char needed */

asm int PUTC (unsigned char c) 
{
@[
.barrier
]

  nop
  nop
  nop
  putc @{c}
  nop
  nop
  nop
}

asm int GETC (unsigned char c) 
{
@[
.barrier
]

  nop
  nop
  nop
  putc @{c}
  nop
  nop
  nop
}


int println(const unsigned char* str, int address) {
  int stringcount = 0;
  unsigned char c;
  int adr;
  int i;
  int checksum; 

  const unsigned char start_char = 17;
  unsigned char value;

  adr = address * 2;
  
  for (i = 0; str[i] != '\0'; i++) {
  }

  stringcount = i;

  // length + start byte, data length byte, newline unsigned character, 
  // carriage return unsigned character and checksum 
  value = (unsigned char) (stringcount + 5);
  PUTC(value);
  value = adr;
  PUTC(value);
  value = start_char;
  PUTC(value);
  checksum = start_char;
  value = (unsigned char) stringcount + 2;
  PUTC(value);
  checksum += stringcount + 2;

  while (*str != '\0') {
    PUTC(*str);
    checksum += value;
    str++;
  }

  PUTC('\r');
  checksum += 10;
  PUTC('\n');
  checksum += 13;
  value = checksum;
  PUTC(value);

  return 42;
}


int main ()
{
 return println("Hello World!\0", 111);
}
