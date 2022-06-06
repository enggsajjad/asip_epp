#!/usr/bin/perl

# Changes from asm to dlxsim
# Data-Section copied to end of file
# rename GPR to r
# add "trap #0" HALT instruction

# PARAMETER: 1st: name of the file to be scanned.
# OUTPUT: Assembly-code, that can be read with dlxsim on std-out.

use warnings;

$retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

# $i is a line counter
$textSectionFound = 0; # 0:false  1:true
$dataSectionFound = 0;
$numberOfLinesBeforeTextSection = 0;
@linesBeforeTextSection = ();

for ($i=0; $currentLine=<file>; $i++) {

    $currentLine =~ s/%GPR/r/gi;

    if ($currentLine =~ m/^(\s*).section(\s+).text/i) {
        $textSectionFound = 1;
	$dataSectionFound = 0;
    }
    
    if ($currentLine =~ m/^(\s*).section(\s+).data/i) {
        $dataSectionFound = 1;
	$textSectionFound = 0;
    }
    
    if ($textSectionFound == 1) {
        print $currentLine;
    } else {
        $linesBeforeTextSection[$numberOfLinesBeforeTextSection] = $currentLine;
	$numberOfLinesBeforeTextSection++;
    }

} # end 'loop over file'
close("file");

# Now add the HALT-command and the Data-Section to the output:
print "\ttrap\t#0\t; HALT\n\n\n";

for ($i=0; $i<$numberOfLinesBeforeTextSection; $i++) {
    print $linesBeforeTextSection[$i];
}

exit 0;
