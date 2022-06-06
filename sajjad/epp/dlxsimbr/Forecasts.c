#include "Forecasts.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// TODO: was passiert, wenn ein und derselbe Forecast mehrfach ausgeführt wird, bevor der SI terminiert wird?

extern unsigned long long computeRealCycleCount(DLX* machPtr);

#define NUMBER_OF_SI_NAMES 9
const char* const SI_NAMES[NUMBER_OF_SI_NAMES] = {"SAD16", "HT_2x2", "HT_4x4", "MC_Hz4", "IPred_HDC16x16", "IPred_VDC16x16", "LoopFilter", "SATD_4x4", "DCT_4x4"};

#define DEBUG_FORECASTS 0
#define FORECASTS_SUMMARY 0


void initializeForecasts() {
#if DEBUG_FORECASTS
  printf("initializeForecasts();\n");
#endif
  forecastData_size = 8;
  forecastData_array = (struct ForecastData**)malloc(forecastData_size*sizeof(struct ForecastData*));
  forecastData_numberOfEntries = 0;

  terminationList_size = 1;
  terminationList_array = (struct TerminationList*)malloc(terminationList_size*sizeof(struct TerminationList));
  terminationList_numberOfEntries = 0;
}


struct ForecastData* getForecastData(int address, int SInumber) {
#if DEBUG_FORECASTS
  printf("getForecastData()\n");
#endif
  int i;
  for (i=0; i<forecastData_numberOfEntries; i++) {
    //printf("%i: address=%i\n", i, forecastData_array[i]->address);
    if (forecastData_array[i]->address == address) return forecastData_array[i];
  }

  // Entry not found --> it is new
  #if DEBUG_FORECASTS
  printf("  new entry: forecastData_array[%i]\n", forecastData_numberOfEntries);
  #endif
  if (forecastData_numberOfEntries >= forecastData_size) {
    #if DEBUG_FORECASTS
    printf("  resize forecastData_array: %i -> %i\n", forecastData_size, 2*forecastData_size);
    #endif
    // Array too small --> resize it
    struct ForecastData** newArray = (struct ForecastData**)malloc(2*forecastData_size*sizeof(struct ForecastData*));
    memcpy(newArray, forecastData_array, forecastData_size*sizeof(struct ForecastData*));
    forecastData_array = newArray;
    newArray = 0;
    forecastData_size *= 2;
  }

  struct ForecastData* data = (struct ForecastData*)malloc(sizeof(struct ForecastData));
  forecastData_array[forecastData_numberOfEntries] = data;
  forecastData_numberOfEntries++;
  data->address = address;
  data->SInumber = SInumber;
  data->forecastTerminationData_size=8;
  data->forecastTerminationData_numberOfEntries=0;
  data->forecastTerminationData_array = (struct ForecastTerminationData*)malloc(data->forecastTerminationData_size*sizeof(struct ForecastTerminationData));

  return data;
}


void notifySIForecast(DLX* machPtr, int address, int SInumber) {
  unsigned long long cycleCount = computeRealCycleCount(machPtr);
#if DEBUG_FORECASTS
  printf("notifySIFORECAST();\tcycleCount=%llu\taddress=%i\tSI=%s\n", cycleCount, address, SI_NAMES[SInumber]);
#endif
  struct ForecastData* data = getForecastData(address, SInumber);
  data->forecastTime = cycleCount;
  data->cyclesTillFirstExecution = 0;
  data->lastExecutionTime = 0;
  data->sumOfCyclesBetweenExecutions = 0;
  data->numberOfExecutions = 0;
}



int iteratorForForecastedSI_position;
int iteratorForForecastedSI_SInumber;

void iteratorForForecastedSI_start(int SInumber) {
  iteratorForForecastedSI_position = 0;
  iteratorForForecastedSI_SInumber = SInumber;
}

struct ForecastData* iteratorForForecastedSI_getNext() {
  while (iteratorForForecastedSI_position < forecastData_numberOfEntries) {
    iteratorForForecastedSI_position++;
    if (forecastData_array[iteratorForForecastedSI_position-1]->SInumber == iteratorForForecastedSI_SInumber)
      return forecastData_array[iteratorForForecastedSI_position-1];
  }
  return 0;
}



void notifySIExecution(DLX* machPtr, int address, int SInumber) {
  unsigned long long cycleCount = computeRealCycleCount(machPtr);
#if DEBUG_FORECASTS
  printf("notifySIExecution();\tcycleCount=%llu\tSI=%s\n", cycleCount, SI_NAMES[SInumber]);
#endif
  iteratorForForecastedSI_start(SInumber);
  struct ForecastData* data;
  while( (data = iteratorForForecastedSI_getNext()) != 0) {
    //printf("loop: %i\n", data->address);
    if (data->cyclesTillFirstExecution == 0) {
      data->cyclesTillFirstExecution = cycleCount - data->forecastTime + 1;
    } else {
      data->sumOfCyclesBetweenExecutions += cycleCount - data->lastExecutionTime + 1;
    }
    data->lastExecutionTime = cycleCount;
    data->numberOfExecutions++;
  }
}


void notifySITermination(DLX* machPtr, int address, int SInumber) {
#if DEBUG_FORECASTS
  unsigned long long cycleCount = computeRealCycleCount(machPtr);
  printf("notifySITERMINATION();\tcycleCount=%llu\tSI=%s\n", cycleCount, SI_NAMES[SInumber]);
#endif

  // remember all Terminations (i.e. Forecasts with value 0) for later output to file
  int i;
  for (i=0; i<terminationList_numberOfEntries; i++) {
    if (terminationList_array[i].address == address) break;
  }
  // if not found then it is new
  if (i==terminationList_numberOfEntries) {
    #if DEBUG_FORECASTS
    printf("  new Termination\n");
    #endif
    // if the list is full, we first have to resize it
    if (terminationList_numberOfEntries == terminationList_size) {
      #if DEBUG_FORECASTS
      printf("    RESIZE %i -> %i\n", terminationList_size, 2*terminationList_size);
      #endif
      struct TerminationList* newArray = (struct TerminationList*)malloc(2*terminationList_size*sizeof(struct TerminationList));
      memcpy(newArray, terminationList_array, terminationList_size*sizeof(struct TerminationList));
      terminationList_array = newArray;
      newArray = 0;
      terminationList_size *= 2;
    }
    terminationList_array[terminationList_numberOfEntries].address = address;
    terminationList_array[terminationList_numberOfEntries].SInumber = SInumber;
    terminationList_numberOfEntries++;
  }

  // update previous forecasts for the current termination
  iteratorForForecastedSI_start(SInumber);
  struct ForecastData* data;
  while( (data = iteratorForForecastedSI_getNext()) != 0) {
    //printf("loop: %i\n", data->address);
    if (data->forecastTerminationData_numberOfEntries >= data->forecastTerminationData_size) {
      #if DEBUG_FORECASTS
      printf("  resize forecastTerminationData_array: %i -> %i\n",data->forecastTerminationData_size, 2*data->forecastTerminationData_size);
      #endif
      // Array too small --> resize it
      struct ForecastTerminationData* newArray = (struct ForecastTerminationData*)malloc(2*data->forecastTerminationData_size*sizeof(struct ForecastTerminationData));
      memcpy(newArray, data->forecastTerminationData_array, data->forecastTerminationData_size*sizeof(struct ForecastTerminationData));
      data->forecastTerminationData_array = newArray;
      newArray = 0;
      data->forecastTerminationData_size *= 2;
    }

    struct ForecastTerminationData* tdata = &data->forecastTerminationData_array[data->forecastTerminationData_numberOfEntries];
    data->forecastTerminationData_numberOfEntries++;
    tdata->numberOfExecutions = data->numberOfExecutions;
    tdata->cyclesTillFirstExecution = data->cyclesTillFirstExecution;
    if (data->numberOfExecutions==0) tdata->averageCyclesBetweenExecutions = 0;
    else tdata->averageCyclesBetweenExecutions = data->sumOfCyclesBetweenExecutions / (unsigned long long)data->numberOfExecutions;
    // I omited the typical "+ 0.5" for correct rounding to avoid a conversion from unsigned long long to double before the division
  }
}


void printForecastStatistics() {
#if DEBUG_FORECASTS
  printf("printForecastStatistics()\n");
#endif
#define STD_DEV(EXPECTANCY, SAMPLE) {\
double temp = tdata->SAMPLE - EXPECTANCY;\
EXPECTANCY ## _stdDev += temp*temp;\
}
  int i, j;
  FILE* file = fopen("prediction_table.dat", "w");
  fprintf(file, "; SI\tNAME\n\n");
  for (i=0; i<NUMBER_OF_SI_NAMES; i++) {
    fprintf(file, "; %i\t%s\n", i, SI_NAMES[i]);
  }
  fprintf(file, "\n\n");
  fprintf(file, "; addr\tSI\t#Execs\tStdDev\tCyclesTillFirstExec\tStdDev\tCyclesBetweenExecs\tStdDev\t; #of Forecast->Termination Blocks (used to compute avg & stdDev)\n\n");
  fprintf(file, "; SI Forecasts:\n");
  for (i=0; i<forecastData_numberOfEntries; i++) {
    struct ForecastData* data = forecastData_array[i];
    #if FORECASTS_SUMMARY
    printf("%i: address=%i, SI=%s, numberOfTerminations=%i\n", i, data->address,
	   SI_NAMES[data->SInumber], data->forecastTerminationData_numberOfEntries);
    #endif
    fprintf(file, "%i\t%i\t", data->address, data->SInumber);
    double averageNumberOfExecutions=0, averageNumberOfExecutions_stdDev=0;
    double averageCyclesTillFirstExecution=0, averageCyclesTillFirstExecution_stdDev=0;
    double averageCyclesBetweenExecutions=0, averageCyclesBetweenExecutions_stdDev=0;
    // The following variable is needed for computing avgCycles tillFirst & between executions.
    // We have to consider the special case, that the SI might not have been used at all in the FC->Term block.
    // This variable is initialized with the number of FC-Term blocks and then decremented in each block where the SI was not used.
    int numberOfTerminationDatasWhereSIwasAcutallyUsed = data->forecastTerminationData_numberOfEntries;

    if (data->forecastTerminationData_numberOfEntries > 0) {
      // compute average values:
      for (j=0; j<data->forecastTerminationData_numberOfEntries; j++) {
	struct ForecastTerminationData* tdata = &data->forecastTerminationData_array[j];
        #if FORECASTS_SUMMARY
	printf("   #Execs=%i\tcyclesTillFirstExec=%i  \tavgCyclesBetweenExecs=%i\n",
	       tdata->numberOfExecutions, tdata->cyclesTillFirstExecution, tdata->averageCyclesBetweenExecutions);
	#endif
	averageNumberOfExecutions += tdata->numberOfExecutions;
	averageCyclesTillFirstExecution += tdata->cyclesTillFirstExecution;
	averageCyclesBetweenExecutions += tdata->averageCyclesBetweenExecutions;
	if (tdata->numberOfExecutions==0) numberOfTerminationDatasWhereSIwasAcutallyUsed--;
      }
      averageNumberOfExecutions /= data->forecastTerminationData_numberOfEntries;
      averageCyclesTillFirstExecution /= numberOfTerminationDatasWhereSIwasAcutallyUsed;
      averageCyclesBetweenExecutions /=  numberOfTerminationDatasWhereSIwasAcutallyUsed;
      
      // compute standard deviations
      for (j=0; j<data->forecastTerminationData_numberOfEntries; j++) {
	//printf("__00:Vor  %.1f\n", averageCyclesTillFirstExecution_stdDev);
	struct ForecastTerminationData* tdata = &data->forecastTerminationData_array[j];
	STD_DEV(averageNumberOfExecutions, numberOfExecutions);

	if (tdata->numberOfExecutions > 0) {
	  STD_DEV(averageCyclesTillFirstExecution, cyclesTillFirstExecution);
	  //printf("__00: Mitte:  %i\n", tdata->cyclesTillFirstExecution);
	  STD_DEV(averageCyclesBetweenExecutions, averageCyclesBetweenExecutions);
	  //printf("__00:Nach  %.1f\n", averageCyclesTillFirstExecution_stdDev);
	}
      }
      //printf("__0_ %.1f\n", averageCyclesTillFirstExecution_stdDev);
      averageNumberOfExecutions_stdDev /= data->forecastTerminationData_numberOfEntries;
      averageCyclesTillFirstExecution_stdDev /= numberOfTerminationDatasWhereSIwasAcutallyUsed;
      //printf("__1_ %.1f\n", averageCyclesTillFirstExecution_stdDev);
      averageCyclesBetweenExecutions_stdDev /= numberOfTerminationDatasWhereSIwasAcutallyUsed;
      averageNumberOfExecutions_stdDev = sqrt(averageNumberOfExecutions_stdDev);
      averageCyclesTillFirstExecution_stdDev = sqrt(averageCyclesTillFirstExecution_stdDev);
      //printf("__2_ %.1f\n", averageCyclesTillFirstExecution_stdDev);
      averageCyclesBetweenExecutions_stdDev = sqrt(averageCyclesBetweenExecutions_stdDev);
    }

    #if FORECASTS_SUMMARY
    printf("   AverageNumberOfExecutions=%.1f      \tStandardDeviation=%.1f\n", averageNumberOfExecutions, averageNumberOfExecutions_stdDev);
    printf("   AverageCyclesTillFirstExecution=%.1f\tStandardDeviation=%.1f\n", averageCyclesTillFirstExecution, averageCyclesTillFirstExecution_stdDev);
    printf("   AverageCyclesBetweenExecutions=%.1f \tStandardDeviation=%.1f\n", averageCyclesBetweenExecutions, averageCyclesBetweenExecutions_stdDev);
    #endif
    fprintf(file, "%i\t%i\t%i\t%i\t%i\t%i\t; %i\n", (int)averageNumberOfExecutions, (int)averageNumberOfExecutions_stdDev,
	    (int)averageCyclesTillFirstExecution, (int)averageCyclesTillFirstExecution_stdDev, (int)averageCyclesBetweenExecutions,
	    (int)averageCyclesBetweenExecutions_stdDev, data->forecastTerminationData_numberOfEntries);
  }
  #if FORECASTS_SUMMARY
  printf("\nSI Terminations:\n");
  #endif
  fprintf(file, "\n; SI Terminations:\n");
  for (i=0; i<terminationList_numberOfEntries; i++) {
    #if FORECASTS_SUMMARY
    printf("%i\t%i\n", terminationList_array[i].address, terminationList_array[i].SInumber);
    #endif
    fprintf(file, "%i\t%i\t0\t0\t0\t0\t0\t0\t; Termination\n", terminationList_array[i].address, terminationList_array[i].SInumber);
  }
  fclose(file);
}
