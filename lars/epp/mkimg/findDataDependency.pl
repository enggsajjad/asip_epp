#!/usr/bin/perl

# PARAMETER: 1st: name of the file to be scanned.
# OUTPUT: The (fixed) Assembly-code on std-out.

# Configure whether a found unresolved DataDependency shall be fixed with 3 inbetween NOPs.
$fixDataDependency = 1;

# Configure the names for the Load/Store commands. Upper-/Lower-case is irrelevant here.
@compareCommands  = ("slt", "sgt", "sle", "sge", "seq", "sne", "slti", "sgti", "slei", "sgei", "seqi", "snei", "sltu", "sgtu", "sleu", "sgeu");
@branchCommands = ("beqz", "bnez", "bgeu");

use warnings;


$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nfindDataDependency: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

$textSectionFound = 0;
$compareCommandFound = 0;
$numberOfProblems = 0;
$lastLine = "";

# $i is a line counter
# $j is the foreach counter for the compareCommands-array

for ($i=0; $currentLine=<file>; $i++) {

    # If the current line only contains a comment, then completey ignore it
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

    # If the last line contained a compare-command, then search for a branch command in this line.
    if ($compareCommandFound==1) {
	$compareCommandFound = 0;
	foreach $j (@branchCommands) {
	    # Basic Idea for the following RegExp:
	    #    Task:   Find a branch-command
	    #    Format: A branch-command looks like: 1. some blanks (0 to n times)   "(\s*)"
            #                                         2. label_name+':' (0 or 1 time) "((\w+:)?)
	    #                                         3. some blanks (0 to n times)   "(\s*)"
	    #                                         4. name of the load-command     "$j"
	    #                                         5. some blanks (1 to n times)   "(\s+)"
	    #                                         6. parameters (not checked by follwing RegExp.)
	    # explanation of the next line: "m":match operator; "/":begin of RegExp;
            # "^": at the line-beginning; "\s": whitespace character; "*": 0 or more times;
	    # "\w": a word-char (alphanumeric+"_"); "+": 1 or more times; ":" the char ':';
	    # "?": 0 or 1 time; "\s": whitespace character; "*": 0 or more characters;
	    # "$j": search string; "\s": whitespace character; "+": 1 or more times;
	    # "/": end RegExp; "i": case insensitive
	    if ($currentLine =~ m/^(\s*)((\w+:)?)(\s*)$j(\s+)/i ) {
#		print STDERR "\n", "------ UNRESOLVED DATA-DEPENDENCY AT A COMPARE-BRANCH-COMMAND FOUND:\n";
#		print STDERR $i-1, ":  ", $lastLine, $i, ":  ", $currentLine;
		$numberOfProblems++;
		if ($fixDataDependency == 1) {
		    print "\tnop\t; Automatically added by findDataDependency.sh\n";
		    print "\tnop\t; Automatically added by findDataDependency.sh\n";
		    print "\tnop\t; Automatically added by findDataDependency.sh\n";
		}
	    }
	}
    }

    # Search for a compare-command in the current line.
    foreach $j (@compareCommands) {
	if ($currentLine =~ m/^(\s*)((\w+:)?)(\s*)$j(\s+)/i ) {
	    $compareCommandFound = 1;
	}
    }


    print $currentLine;
    $lastLine = $currentLine;
} # end 'loop over file'

close("file");

if ($numberOfProblems <= 0) {
    print STDERR "findDataDependency:\t\t0 unresolved Data Dependecies for compare-branch-commands found.\n";
    exit 0;
} else {
    if ($fixDataDependency == 1) {
        print STDERR "findDataDependency:\t\t$numberOfProblems unresolved Data Dependencies for compare-branch-commands found and fixed!!\n";
        exit 0;
    } else {
        print STDERR "findDataDependency:\t\tERROR: $numberOfProblems unresolved Data Dependencies for compare-branch-commands found!!\n";
        exit 1;
    }
}
