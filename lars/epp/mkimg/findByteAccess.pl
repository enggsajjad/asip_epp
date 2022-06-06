#!/usr/bin/perl


# PARAMETER: 1st: name of the file to be scanned.

# Configure the names for the Load/Store commands. Upper-/Lower-case is irrelevant here.
@loadStoreByteCommands  = ("sb", "sh");

use warnings;


$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nfindByteAccess: ERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

$textSectionFound = 0;
$numberOfProblems = 0;

# $i is a line counter
# $j is the foreach counter for the loadCommands- and storeCommands-array

for ($i=0; $currentLine=<file>; $i++) {
    
    # If the current line contains only a comment, then completey ignore it
    if ($currentLine =~ m/^\s*;/ ) {
	    next;
    }

    # If the current line is an assembler directive (e.g. ".addressing Word"),
    # then completey ignore it ($ means: end of line)
    # ADDITIONALLY: search for 'text' and 'data' sections
    if ( $currentLine =~ m/^\s*\./ ) {
	if ($currentLine =~ m/^(\s*).section(\s+).text/i) {
	    $textSectionFound = 1;
	}
	if ($currentLine =~ m/^(\s*).section(\s+).data/i) {
	    $textSectionFound = 0;
	}
	next;
    }

    if ($textSectionFound == 0) {
	next;
    }


    foreach $j (@loadStoreByteCommands) {
	# Basic Idea for the following RegExp:
	#    Task:   Find a loadStoreByteCommand
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
		$numberOfProblems++;
	}
    }
    
} # end 'loop over file'

close("file");

if ($numberOfProblems <= 0) {
    print STDERR "findByteAccess:\t\t\t0 Store Byte (sb) / Store HalfWord (sh) Commands found.\n";
    exit 0;
} else {
    print STDERR "\nfindByteAccess:\t\t!!! WARNING !!! ${numberOfProblems} Store Byte (sb) / Store HalfWord (sh) Commands found. This won't run in the current hardware prototype!\n\n";
    exit 0;
}
