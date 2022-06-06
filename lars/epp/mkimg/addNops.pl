#!/usr/bin/perl

# PARAMETER: 1st: name of the file to be scanned.
#            2nd: Number of NOPs that shall be added. Has to be > 0.


use warnings;

$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\naddNops: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

if ($ARGV[1] <= 0) {
    print STDERR "\naddNops: ERROR: Called with wrong parameter value for numberOfNOPs to be added ($ARGV[1])\n\n";
    exit 1;
}

# $i is a line counter (not needed in this script, but helpfull for debugging)

$textSectionFound = 0;
$lastLineWasLabel = 0;
$nopCounter = 0;
for ($i=0; $currentLine=<file>; $i++) {

    # If the current line only contains a comment or an empty line,
    # then completey ignore it ($ means: end of line)
    if ( $currentLine =~ m/^\s*;/ || $currentLine =~ m/^\s*$/ ) {
	print $currentLine;
	next;
    }

    # If the current line is an assembler directive (e.g. ".addressing Word"),
    # then completey ignore it ($ means: end of line)
    # ADDITIONALLY: search for 'text' and 'data' sections
    if ( $currentLine =~ m/^\s*\./ ) {
	print $currentLine;
	if ($currentLine =~ m/^(\s*).section(\s+).text/i) {
	    $textSectionFound = 1;
	}
	if ($currentLine =~ m/^(\s*).section(\s+).data/i) {
	    $textSectionFound = 0;
	}
	next;
    }



    # Basic Idea for the following RegExp:
    #    Task:   Find a label
    #    Format: 1. some blanks (0 to n times)   "(\s*)"
    #            2. label_name+':' (0 or 1 time) "((\w+:)?)
    # explanation of the next line: "m":match operator; "/":begin of RegExp;
    # "^": at the line-beginning; "\s": whitespace character; "*": 0 or more times;
    # "\w": a word-char (alphanumeric+"_"); "+": 1 or more times; ":" the char ':';
    # "/": end RegExp; "i": case insensitive
    if ($currentLine =~ m/^(\s*)(\w+:)/i ) {
	if ($lastLineWasLabel==1) {
	    print $currentLine;
	    next;
	}
	$lastLineWasLabel = 1;
    } else {
	$lastLineWasLabel = 0;
    }

    if ($textSectionFound == 1) {
	for ($j=0; $j<$ARGV[1]; $j++) {
	    $nopCounter++;
	    print "\tnop\n";
		#\t; Automatically Added by addNops.pl\n";
	}
    }

    print $currentLine;
        
} # end 'loop over file'

close("file");
print STDERR "addNops:\t\t\t$nopCounter NOPs added\n";
exit 0;
