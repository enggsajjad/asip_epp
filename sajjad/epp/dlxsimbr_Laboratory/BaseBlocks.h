#ifndef BaseBlocks__h
#define BaseBlocks__h


/****************
 * PUBLIC PART: *
 ****************/
#define Separator_Label  1
#define Separator_Jump   2  /* Genau genommen müsste man zwischen Branch und Jump unterscheiden */
#define Separator_Return 3
#define Separator_Finish 4

void notifyBaseBlocks(unsigned long address, int separatorType, const char* name, const char* jumpTarget, const char* specialInstructions);
void printAllBaseBlocks();
void printBaseBlock(int position);
int  isAddressBBStart(int imAddress); /* returns -1 if the address is not a BB start. Returns the index of this BB in baseBlockList otherwise. */
void increaseSuccessingBaseBlockCount(int baseBlockNumber, int successingBaseBlockNumber);



/*****************
 * PRIVATE PART: *
 *****************/

typedef struct {
  unsigned long startAddress;
  unsigned long endAddress;
  const char* startName;  /* This Name is the reason, why the BB started. Might be a label or an preceeding jump */
  const char* endName;
  const char* startJumpTarget;  /* If the start name was a preceeding jump, then this is the target of this jump */
  const char* endJumpTarget;
  int executionTime;  /* number of cycles, needed for executing this BB */

  /* For the output of the 'profiling BaseBlocks' file */
  const char* startLabel; /* If the start name was a label, then this is the name of the label */
  const char* endLabel;
  const char* startJumpInstruction;  /* If the start name was a preceeding jump, then this is the name of the jumpInstruction */
  const char* endJumpInstruction;
  const char* specialInstructions;  /* A comma-separated list which contains the names of the special instructions in this BaseBlock */

  /* Two dynamic growing lists. The first list (Numbers) contains the baseBlock number of the
   *  (so far executed) successors of this baseBlock and the second list (Counters) contains
   *  the counting value how often the successing baseBlock with the corresponding index in
   *  the Numbers-list was reached by this baseBlock.
   *  Example: two successing baseBlocks X & Y with numbers 23 & 42 and execution count 5 & 7:
   *    Number_List = {23, 42};
   *    Counters_List = {5, 7};
   *  As both lists grow identically, their size and their position to insert is only stored once.
   */
  int* successingBaseBlocksNumbers_List;
  int* successingBaseBlocksCounters_List;
  unsigned int successingBaseBlocks_Size;
  unsigned int successingBaseBlocks_Position;

} baseBlock;


baseBlock* baseBlockList;
unsigned int baseBlockListSize;
unsigned int numberOfBaseBlocks;


char** equalLabelsList;
unsigned int equalLabelsListSize;
unsigned int numberOfEqualLabels;



void initializeBaseBlockList();
void addBaseBlock(unsigned long startAddress, const char* const startName, const char* const startJumpTarget, const char* const startLabel,
		  const char* const startJumpInstruction, unsigned long endAddress, const char* const endName, const char* const endJumpTarget,
		  const char* const endLabel, const char* const endJumpInstruction, const char* const specialInstructions);

#endif
