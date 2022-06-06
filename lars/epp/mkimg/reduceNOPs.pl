#!/usr/bin/perl

# PARAMETER: 1st: name of the file to be scanned.
#            2nd: number of max allowed successive NOPs
# OUTPUT: Assembly-code with a reduced number of NOPs on std-out.

use warnings;

$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nreduceNOPs: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

if ($ARGV[1]<0) {
    print STDERR "\nreduceNOPs: ERROR: Called with wrong parameter value for max number of allowed successive NOPs ($ARGV[1])\n\n";
    exit 1;
}

# $i is a line counter (not needed in this script, but helpfull for debugging)

$currentNumberOfNOPs = 0;
$numberOfRemovedNOPs = 0;
$numberOfRemovedNOPsInThisBlock = 0;
for ($i=0; $currentLine=<file>; $i++) {

    # If the current line only contains a comment or an empty line,
    # then completey ignore it ($ means: end of line)
    if ( $currentLine =~ m/^\s*;/ || $currentLine =~ m/^\s*$/ ) {
	print $currentLine;
	next;
    }


    # explanation of the next line: "m":match operator; "/":begin of RegExp;
    # "^": at the line-beginning; "/s": whitespace character; "*": 0 or more times;
    # "$j": search string; "/s": whitespace character; "+": 1 or more times;
    # "/": end RegExp; "i": case insensitive
    if ($currentLine =~ m/^\s*NOP\s+/i ) {
	$currentNumberOfNOPs++;
	if ($currentNumberOfNOPs <= $ARGV[1]) {
	    print $currentLine;
	} else {
	    $numberOfRemovedNOPs++;
	    $numberOfRemovedNOPsInThisBlock++;
	}
    } else {
	if ($numberOfRemovedNOPsInThisBlock>0) {
	    print "\t\t\t\t; Automatically $numberOfRemovedNOPsInThisBlock NOPs removed by reduceNOPs.sh\n";
	}
	$numberOfRemovedNOPsInThisBlock = 0;
	$currentNumberOfNOPs = 0;
	print $currentLine;
    }
    
} # end 'loop over file'

close("file");
print STDERR "reduceNOPs:\t\t\t", $numberOfRemovedNOPs, " NOPs removed\n";
exit 0;
