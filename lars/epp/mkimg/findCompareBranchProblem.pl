#!/usr/bin/perl

# PARAMETER: 1st: name of the file to be scanned.
# OUTPUT: The (fixed) Assembly-code on std-out.

# EXAMPLE for an CompareBranchProblem:
#	r1 = sltu(r2, r3)
#	nop
#	nop
#	nop
#	bnez r20, label ; should have been: "bnez r1, label"

use warnings;


# Configure whether a found CompareBranchProblem shall be fixed.
$fixCompareBranchProblem = 1;

# Configure the names for the Compare/Branch commands. Upper-/Lower-case is irrelevant here.
@compareCommands  = ("slt", "sgt", "sle", "sge", "seq", "sne", "slti", "sgti", "slei", "sgei", "seqi", "snei", "sltu", "sgtu", "sleu", "sgeu");
@branchCommands = ("beqz", "bnez", "bgeu");



$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nfindCompareBranchProblem: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

$textSectionFound = 0;
$compareCommandFound = 0;
$numberOfProblems = 0;
$branchCommandFound = 0;
$compareLineNumber = 0;
$compareLine = "";

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
	next;
    }


    # If the previous not-"nop" line contained a compare-command, then search for a branch command or skip a nop-line.
    if ($compareCommandFound==1) {

	# If the current line is a nop line, then just skip it.

        # explanation of the next line: "m":match operator; "/":begin of RegExp;
        # "^": at the line-beginning; "/s": whitespace character; "*": 0 or more times;
        # "$j": search string; "/s": whitespace character; "+": 1 or more times;
        # "/": end RegExp; "i": case insensitive
        if ($currentLine =~ m/^\s*NOP\s+/i ) {
	    print $currentLine;
	    next;
	}


	# If it is not a 'nop'-line, then it is either a compare-command or another command.
	# In both cases our last non-'nop'-line is no longer a compare-command.
	$compareCommandFound = 0;


	# Now test, whether the current line is a branch-command.
	foreach $j (@branchCommands) {
	    # Basic Idea for the following RegExp:
	    #    Task:   Find a branch-command
	    #    Format: A branch-command looks like: 1. some blanks (0 to n times)   "(\s*)"
            #                                         2. label_name+':' (0 or 1 time) "((\w+:)?)
	    #                                         3. some blanks (0 to n times)   "(\s*)"
	    #                                         4. name of the branch-command     "$j"
	    #                                         5. some blanks (1 to n times)   "(\s+)"
	    #                                         6. parameters (not checked by follwing RegExp.)
	    # explanation of the next line: "m":match operator; "/":begin of RegExp;
            # "^": at the line-beginning; "\s": whitespace character; "*": 0 or more times;
	    # "\w": a word-char (alphanumeric+"_"); "+": 1 or more times; ":" the char ':';
	    # "?": 0 or 1 time; "\s": whitespace character; "*": 0 or more characters;
	    # "$j": search string; "\s": whitespace character; "+": 1 or more times;
	    # "/": end RegExp; "i": case insensitive
	    if ($currentLine =~ m/^(\s*)((\w+:)?)(\s*)$j(\s+)/i ) {
		# Now test, whether the branch command uses the same register, that the compare command used.

		# Now separate the parameters from the opcode.
		#   $_tick means: The text after the previous match (in the if-clause)
		@parameters = split(/,/, $'); #'# Just a dummy comment to match the tick after $.

		if ($compareParameter ne $parameters[0] ) {
#		    print STDERR "\n", "------ COMPARE-BRANCH PROBLEM FOUND:\n";
#		    print STDERR $compareLineNumber, ":  ", $compareLine, $i, ":  ", $currentLine;
		    $numberOfProblems++;
		    if ($fixCompareBranchProblem == 1) {
			$currentLine =~ s/$parameters[0]/$compareParameter/;
			$currentLine =~ s/\n/\t; Automatically fixed by findCompareBranchProblem.sh. Previous Register was $parameters[0]\n/;
		    }
		}

		# if we have found an branch command, we skip the other available branch commands
		$branchCommandFound = 1;
		last;
	    }
	}
    }


    # We search for compare-commands (if the last command is not allready know as beeing a branch-command)
    if ($branchCommandFound == 0) {
        # Search for a compare-command in the current line.
	foreach $j (@compareCommands) {
	    if ($currentLine =~ m/^(\s*)((\w+:)?)(\s*)$j(\s+)/i ) {
		$compareCommandFound = 1;
		$compareLine = $currentLine;
		$compareLineNumber = $i;

		# Now separate the parameters from the opcode.
		#   $_tick means: The text after the previous match (in the if-clause)
		@parameters = split(/,/, $'); #'# Just a dummy comment to match the tick after $.
		$compareParameter = $parameters[0];
	    }
	}
    }
    $branchCommandFound = 0;


    print $currentLine;
} # end 'loop over file'

close("file");

if ($numberOfProblems <= 0) {
    print STDERR "findCompareBranchProblem:\t0 compare-branch problems found.\n";
    exit 0;
} else {
    if ($fixCompareBranchProblem == 1) {
        print STDERR "findCompareBranchProblem:\t$numberOfProblems compare-branch problems found and fixed!!\n";
        exit 0;
    } else {
        print STDERR "findCompareBranchProblem:\tERROR: $numberOfProblems compare-branch problems found!!\n";
        exit 1;
    }
}
