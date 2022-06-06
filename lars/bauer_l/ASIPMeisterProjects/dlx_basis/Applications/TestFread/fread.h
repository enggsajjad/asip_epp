#ifndef _FREAD_H_rdsghemo8l7tcw5ixtmeilcgw5seth8dmxesgv85ehnaqwe4znxtgf7lsce5
#define _FREAD_H_rdsghemo8l7tcw5ixtmeilcgw5seth8dmxesgv85ehnaqwe4znxtgf7lsce5

struct MYFILE {
  char* filePointer;
  char* fileEndPointer;
  char* mode;
  char* fileName;
};



struct MYFILE* myfopen(const char* fileName, const char* mode);

int myfread(char* ptr, int size, int nobj, struct MYFILE* stream);

int myfwrite(char* ptr, int size, int nobj, struct MYFILE* stream);

void myfclose(struct MYFILE* stream);

#endif
