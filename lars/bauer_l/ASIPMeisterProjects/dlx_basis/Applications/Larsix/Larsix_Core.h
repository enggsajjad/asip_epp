#ifndef larsix_core_5wuec4zk8puwe5mh8uzaxm8p9ctgzvw4patm89c
#define larsix_core_5wuec4zk8puwe5mh8uzaxm8p9ctgzvw4patm89c

#define DETERMINE_START_ADDRESS(LABEL) \
  asm int determineStartAddress_ ## LABEL() { \
    @[ .barrier ] \
      LI @{}, * ## LABEL \
  }

int yield();


#endif
