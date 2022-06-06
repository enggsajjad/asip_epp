#define UART_ADDR 16777216

int loadByteUnsigned(const char* address) {
  int loadMask = -4;
  int charAddress = (int)address;
  int* wordPointer = (int*)(charAddress & loadMask);
  int retVal = *wordPointer;
  retVal >>= (~(charAddress&3) ) << 3;  // The "~()" is because the endianess
  return retVal & 0xFF;
}

int storeByte(char* address, int value) {
  int loadMask = -4;
  int charAddress = (int)address;
  int* wordPointer = (int*)(charAddress & loadMask);
  int wordValue = *wordPointer;
  int mask = 0xFF << ( (3 - (charAddress&3) ) << 3);
  value <<= (~(charAddress&3) ) << 3;  // The "~()" is because the endianess
  wordValue &= ~mask;
  wordValue |= value;
  *wordPointer = wordValue;
  return wordValue;
}

int strlength (const char* str) {
  char* str_p = str;
  char count = 0;

  while (loadByteUnsigned(str_p++) != 0) count++;

  return count;
}

int t_printu(const char* str){
  int i;
  int length = strlength(str);
  int* const uartAddress = (int*)UART_ADDR;
  for(i=0; i<length; i++){
    *uartAddress = loadByteUnsigned(str++);
  }
  return 0;
}

int getbytesu(char* dest, int bytes_to_read){
  int i;
  int* const uartAddress = (int*)UART_ADDR;
  for(i=0; i<bytes_to_read; i++){
    storeByte(dest++,*uartAddress);
  }
  return 0;
}

  int loadprogramm(int check)
	{
	 int* const sramAddressim = (int*)67108864;
  	 int* const sramAddressdm = (int*)83886080;
	 int* const uartAddress = (int*)16777216;
    	 int i, j, n, data;
	  for (i=0;  ; i++) {
       		j = uartAddress[0];
       		if (j == 80) break;
       		data = (j<<28);

		for (n=24; n >= 0;)
		{
			j = uartAddress[0]-64 ;
			data = data + (j<<n);
			n = n-4;
		}
		if (check == 0)
       		{
			sramAddressim[i] = data;
		}
		else
		{
			sramAddressdm[i] = data;
		}
				if((i != 0) && (i % 256==0))t_printu(".");
  		}
	return 0;
    	}


int main() {
  char tempString[20];
  int data1;
  int* const switchAddress = (int*)40000000;

loadim:
  t_printu("\n\rDo you want to load TestData.IM? please type 'y' or 'n':\r\n");
  getbytesu(tempString, 1);
  t_printu(tempString);
  data1 = loadByteUnsigned(tempString);
  if(data1 == 110) {
    goto loaddm; // answer is 'n'
  } else if(data1 == 121) {
    // answer is 'y'
  } else {
    goto loadim;
  }


  t_printu("\n\rload the TestData.IM now!\n\r");
  loadprogramm(0);
  t_printu("\n\rload of TestData.IM finished!");


loaddm:
  t_printu("\n\rDo you want to load TestData.DM? Please type 'y' or 'n':\r\n");
  getbytesu(tempString, 1);
  t_printu(tempString);
  data1 = loadByteUnsigned(tempString);
  if(data1 == 110) {
    goto end; // answer is 'n'
  } else if(data1 == 121) {
    // answer is 'y'
  } else {
    goto loaddm;
  }

  t_printu("\n\rload the TestData.DM now!\n\r");
   loadprogramm(1);
   t_printu("\n\rload of TestData.DM finished!");

end:
   t_printu("\n\rDo you want to start the Programm? please type 'y' or 'n':\r\n");
   getbytesu(tempString, 1);
   t_printu(tempString);
   data1 = loadByteUnsigned(tempString);
   if(data1 == 110) {
     goto loadim; // answer is 'n'
   } else if(data1 == 121) {
     // answer is 'y'
   } else {
    goto end;
   }
  t_printu("\n\rProgramm starts!\n\r");
  *switchAddress = 1;
  return 0;
}






