#ifndef ___SYSCALL_5674276587609742756897698
#define ___SYSCALL_5674276587609742756897698


#define SET_RETURN_VALUE(x)  writeRegister(machPtr, 1, x, 0);

#define TRAP_OPEN 1
#define TRAP_CLOSE 2
#define TRAP_READ 3
#define TRAP_WRITE 4
#define TRAP_PRINTF 5

/* phd extension */

#define TRAP_TIME      100
#define TRAP_LOCALTIME 200

int Handle_Trap(DLX* machPtr, int trapNum);
int Handle_Open(DLX* machPtr);
int Handle_Close(DLX* machPtr);
int Handle_Read(DLX* machPtr);
int Handle_Write(DLX* machPtr);
int Handle_Printf(DLX* machPtr);
int Handle_Time(DLX* machPtr);
int Handle_Localtime(DLX* machPtr);


#endif
