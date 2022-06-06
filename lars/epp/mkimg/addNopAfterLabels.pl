#!/usr/bin/perl

# PARAMETER: 1st: name of the file to be scanned.
# OUTPUT: The (fixed) Assembly-code on std-out.
# COMMENT: This script only works accurate when a line with a label does not contain code!

use warnings;

$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\naddNopAfterLabels: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

$numberOfProblems = 0;
$lastLineWasLabel = 0; # 0:false  1:true
$thisLineIsLabel = 0;
$textSectionFound = 0;


# $i is a line counter
for ($i=0; $currentLine=<file>; $i++) {

    # If the current line only contains a comment or an empty line,
    # then completey ignore it ($ means: end of line)
    if ( $currentLine =~ m/^\s*;/ || $currentLine =~ m/^\s*$/ ) {
	print $currentLine;
	next;
    }

    if ($currentLine =~ m/^(\s*).section(\s+).text/i) {
        $textSectionFound = 1;
	print $currentLine;
	next;
    }

    if ($currentLine =~ m/^(\s*).section(\s+).data/i) {
	$textSectionFound = 0;
	print $currentLine;
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
	$thisLineIsLabel = 1;
    } else {
	$thisLineIsLabel = 0;
    }

    # If a label was found inside the text-section in the previous line,
    # then make sure, that the first instruction after the label is a NOP
    if ($lastLineWasLabel==1 && $thisLineIsLabel==0 && $textSectionFound==1) {
        # explanation of the next line: "m":match operator; "/":begin of RegExp;
        # "^": at the line-beginning; "/s": whitespace character; "*": 0 or more times;
        # "NOP": search string; "/s": whitespace character; "+": 1 or more times;
        # "/": end RegExp; "i": case insensitive
        if ($currentLine !~ m/^\s*NOP\s+/i ) {
	    print "\tnop\t; Automatically Added by addNopAfterLabels.pl\n";
	    $numberOfProblems++;
	}
    }

    print $currentLine;
    $lastLineWasLabel = $thisLineIsLabel;
} # end 'loop over file'

close("file");

print STDERR "addNopAfterLabels:\t\tFound $numberOfProblems Labels after each of which 1 NOP was added.\n";
