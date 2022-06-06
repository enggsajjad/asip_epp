#ifndef forecasts__4qwotzmcgw8zmatch78votzcx784tzcg78mswz
#define forecasts__4qwotzmcgw8zmatch78votzcx784tzcg78mswz

#include "dlx.h"

#define FC_SAD_16               0
#define FC_HT_2X2               1
#define FC_HT_4X4               2
#define FC_MC_HZ4               3
#define FC_IPRED_HDC16X16       4
#define FC_IPRED_VDC16X16       5
#define FC_LOOPFILTER           6
#define FC_SATD_4X4             7
#define FC_DCT_4X4              8

void initializeForecasts();
void notifySIForecast(DLX* machPtr, int address, int SInumber);
void notifySIExecution(DLX* machPtr, int address, int SInumber);
void notifySITermination(DLX* machPtr, int address, int SInumber);
void printForecastStatistics();

struct ForecastTerminationData {
  int numberOfExecutions;
  int cyclesTillFirstExecution;
  int averageCyclesBetweenExecutions;
};

struct ForecastData {
  // general information
  int address;
  int SInumber;

  // information for a specific forecast - executions - termination  block
  unsigned long long forecastTime;
  unsigned long long lastExecutionTime;
  unsigned long long sumOfCyclesBetweenExecutions;
  int cyclesTillFirstExecution;
  int numberOfExecutions;

  // information to summarize the average over multiple forecast - executions - termination blocks
  //   it's an array of ForecastTerminationData structs; one entry per executed termination
  struct ForecastTerminationData* forecastTerminationData_array;
  int forecastTerminationData_size;
  int forecastTerminationData_numberOfEntries;
};

struct ForecastData** forecastData_array;
int forecastData_size;
int forecastData_numberOfEntries;



struct TerminationList {
  int address;
  int SInumber;
};

struct TerminationList* terminationList_array;
int terminationList_size;
int terminationList_numberOfEntries;
#endif
