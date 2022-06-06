#!/usr/bin/perl

# PARAMETER: 1st: name of the file to be scanned.
# OUTPUT: The (fixed) Assembly-code on std-out.

# Configure whether a found Load/Store problem shall be fixed with an inbetween nop.
$fixLoadStoreProblem = 1;

# Configure the names for the Load/Store commands. Upper-/Lower-case is irrelevant here.
@loadCommands  = ("lw", "lh", "lb", "lhu", "lbu");
@storeCommands = ("sw", "sh", "sb");

use warnings;


$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nfindLoadStoreProblem: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

$textSectionFound = 0;
$lastLoad = -1;
$lastStore = -1;
$numberOfProblems = 0;
$lastLine = "";

# $i is a line counter
# $j is the foreach counter for the loadCommands- and storeCommands-array

for ($i=0; $currentLine=<file>; $i++) {
    
    # If the current line contains only a comment, then completey ignore it
    if ($currentLine =~ m/^\s*;/ ) {
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

    if ($textSectionFound == 0) {
	print $currentLine;
	$lastLine = $currentLine;
	next;
    }


    foreach $j (@loadCommands) {
	# Basic Idea for the following RegExp:
	#    Task:   Find a load-command
	#    Format: A load-command looks like: 1. some blanks (0 to n times)   "(\s*)"
        #                                       2. label_name+':' (0 or 1 time) "((\w+:)?)
	#                                       3. some blanks (0 to n times)   "(\s*)"
	#                                       4. name of the load-command     "$j"
	#                                       5. some blanks (1 to n times)   "(\s+)"
	#                                       6. parameters (not checked by follwing RegExp.)
	# explanation of the next line: "m":match operator; "/":begin of RegExp;
        # "^": at the line-beginning; "\s": whitespace character; "*": 0 or more times;
	# "\w": a word-char (alphanumeric+"_"); "+": 1 or more times; ":" the char ':';
	# "?": 0 or 1 time; "\s": whitespace character; "*": 0 or more characters;
	# "$j": search string; "\s": whitespace character; "+": 1 or more times;
	# "/": end RegExp; "i": case insensitive
	if ($currentLine =~ m/^(\s*)((\w+:)?)(\s*)$j(\s+)/i ) {
	    $lastLoad = $i;
	    if ($i == $lastStore+1) {
#		print STDERR "\n", "------ LOAD-AFTER-STORE PROBLEM FOUND:\n";
#		print STDERR $i-1, ":   ", $lastLine, $i, ":  ", $currentLine;
		$numberOfProblems++;
		if ($fixLoadStoreProblem == 1) {
		    print "\tnop\t; Automatically added by findLoadStoreProblem.sh\n";
		}
	    }
	}
    }
    
    foreach $j (@storeCommands) {
	if ($currentLine =~ m/^(\s*)((\w+:)?)(\s*)$j(\s+)/i ) {
	    $lastStore = $i;
	    if ($i == $lastLoad+1) {
#		print STDERR "\n", "------ STORE-AFTER-LOAD PROBLEM FOUND:\n";
#		print STDERR $i-1, ":  ", $lastLine, $i, ":  ", $currentLine;
		$numberOfProblems++;
		if ($fixLoadStoreProblem == 1) {
		    print "\tnop\t; Automatically added by findLoadStoreProblem.sh\n";
		}
	    }
	}
    }

    print $currentLine;
    $lastLine = $currentLine;
} # end 'loop over file'

close("file");

if ($numberOfProblems <= 0) {
    print STDERR "findLoadStoreProblem:\t\t0 Load/Store problems found.\n";
    exit 0;
} else {
    if ($fixLoadStoreProblem == 1) {
        print STDERR "findLoadStoreProblem:\t\t$numberOfProblems Load/Store problem(s) found and fixed!!\n";
        exit 0;
    } else {
        print STDERR "findLoadStoreProblem:\t\tERROR: $numberOfProblems Load/Store problem(s) found!!\n";
        exit 1;
    }
}
