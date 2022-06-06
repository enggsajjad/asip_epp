#!/usr/bin/perl

# PARAMETER: 1st: name of the file to be scanned.
# OUTPUT: An Error message on the console, if some undefined or multiple-defined symbols were found.

use warnings;


$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nscanForSymbols: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

$foundUndefined = 0;
$foundUndefined2 = 0;
$foundMultiple = 0;
$foundMultiple2 = 0;
$firstUndefined = 1;
$firstMultiple = 1;
$NumberOfProblems = 0;

# $i is a line counter

for ($i=0; $currentLine=<file>; $i++) {

    if ($foundUndefined2 == 1) {
	if ($currentLine =~ m/^\n/i) {
	    $foundUndefined2 = 0;
	} else {
	    if ($firstUndefined == 1) {
		$firstUndefined = 0;
		print STDERR "\nscanForSymbols: ERROR: Undefined Symbols found:\n";
		print STDERR $lastLine;
	    }
	    print STDERR $currentLine;
	    $NumberOfProblems++;
	}
    }

    if ($foundMultiple2 == 1) {
	if ($currentLine =~ m/^\n/i) {
	    $foundMultiple2 = 0;
	} else {
	    if ($firstMultiple == 1) {
		$firstMultiple = 0;
		print STDERR "\nscanForSymbols: ERROR: Multiple Defined Symbols found:\n";
		print STDERR $lastLine;
	    }
	    print STDERR $currentLine;
	    $NumberOfProblems++;
	}
    }

    if ($foundUndefined == 1) {
	$foundUndefined = 0;
	if ($currentLine =~ m/^name\s+section\s+lc\s+attr\s+value\s+lineno/i) {
	    $foundUndefined2 = 1;
	}
    }

    if ($foundMultiple == 1) {
	$foundMultiple = 0;
	if ($currentLine =~ m/^name\s+section\s+lc\s+attr\s+value\s+lineno/i) {
	    $foundMultiple2 = 1;
	}
    }

    if ($currentLine =~ m/^Undefined Symbol/i) {
	$foundUndefined = 1;
    }

    if ($currentLine =~ m/^Multiple Defined Symbol/i) {
	$foundMultiple = 1;
    }

    $lastLine = $currentLine;

} # end 'loop over file'

close("file");

if ($NumberOfProblems>0) {
    print STDERR "scanForSymbols:\t\t\tERROR: ", $NumberOfProblems, " Undefined or Multiple Defined Symbols found !!\n";
    exit 1;
} else {
    print STDERR "scanForSymbols:\t\t\t0 Undefined or Multiple Defined Symbols found\n";
    exit 0;
}
