#ifndef _FILEDATA_H_jrgmwcoierhgs4wenilacg7is45zetm89csezw34789xtzw
#define _FILEDATA_H_jrgmwcoierhgs4wenilacg7is45zetm89csezw34789xtzw

#define NUMBER_OF_FILES 4

char* fileNames[NUMBER_OF_FILES] = {"foo.txt", "chocolatebar.txt", "benzol.txt", "ethanol.txt"};
/* char filedata[]={"Red\0The quick brown fox jumps over the lazy dog.rusjtchejuvahtnvksuvdmhzhrseatzscgnvtaauiliwhe5fce4mtguahserckntuzavhmbö8ahertcccmvu4sehzb5d\0\
                                                                                                                                                               \0\
Yellow\0"};
char* filepointers[NUMBER_OF_FILES]={&filedata[0], &filedata[4], &filedata[135], &filedata[293]};
char* fileendpointers[NUMBER_OF_FILES]={&filedata[3], &filedata[134], &filedata[292], &filedata[299]};*/

char fileData[]={"Red\0Old-spice\0tocopherol\0green\0"};
char* filePointers[NUMBER_OF_FILES]={&fileData[0], &fileData[4], &fileData[14], &fileData[24]};
char* fileEndPointers[NUMBER_OF_FILES]={&fileData[3], &fileData[13], &fileData[23], &fileData[28]};
//TODO: fileendpointer  soll EOF herausfinden


#endif
