/BRZ\t|BRNZ\t|JP\t|JPL\t|BRZ |BRNZ |JP |JPL |BGEU\t|BGEU /{
   last=$NF;
   NF--;
   printf("line%s:\t%s $(%s-line%s-4)\n\t", NR, $0, last, NR); next }
NF>1{ print $0; next }
{ print $1 }
