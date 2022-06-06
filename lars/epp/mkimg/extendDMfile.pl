#!/usr/bin/perl

# PARAMETER: 1st: name of the TestData.DM file
# OUTPUT: The extended TestData.DM file (filling gaps in address space) on std-out.

use warnings;

$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nextendDMfile: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}


$numberOfProblems = 0;
$lastAddress = "";

# $i is a line counter
for ($i=0; $currentLine=<file>; $i++) {

    @tokens = split(/ /, $currentLine);
    $address = hex($tokens[0]);
    if ($lastAddress ne "" && $lastAddress+4 < $address) {
	do {
	    $lastAddress+=4;
	    printf("%.8X 00000000  -- added by extendDMfile.pl\n", $lastAddress);
	} while($lastAddress+4 < $address);
	$numberOfProblems++;
    }

    $lastAddress = $address;
    print $currentLine;
} # end 'loop over file'

close("file");

if ($numberOfProblems <= 0) {
    print STDERR "extendDMfile:\t\t\t0 gaps in TestData.DM found.\n";
} else {
    print STDERR "extendDMfile:\t\t\t$numberOfProblems gaps in TestData.DM found and fixed!!.\n";
}
exit 0;

