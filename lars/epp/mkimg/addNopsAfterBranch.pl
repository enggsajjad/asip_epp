#!/usr/bin/perl

use warnings;

@branchCommands = ("jal", "jr", "beqz", "bnez", "bgeu", "j");

$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}


# $i is a line counter
# $j is the foreach counter for the compareCommands-array

for ($i=0; $currentLine=<file>; $i++) {

    print $currentLine;

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
	    print "\tNOP\n";
	}
    }
} # end 'loop over file'

close("file");

