#!/usr/bin/perl

# PARAMETER: 1st: name of the file to be scanned.
#            2nd: replace prefix for the labels.
# OUTPUT: The renamed Assembly-code on std-out.

use warnings;

$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nrenameLabels: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}


# $i is a line counter

for ($i=0; $currentLine=<file>; $i++) {

#    $currentLine =~ s/.L(\d+)/.L_$ARGV[1]_$1/gi;
#    $currentLine =~ s/.L(\d+)/L_$ARGV[1]_$1/gi;
	$currentLine =~ s/.L(C?)(\d+)/L$1_$ARGV[1]_$2/gi;
    print $currentLine;
} # end 'loop over file'

close("file");
exit 0;
