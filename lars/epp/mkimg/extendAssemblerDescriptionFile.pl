#!/usr/bin/perl

# PARAMETER: 1st: name of the assembler description file (e.g. dlx_basis.des)
#            2nd: name of the file with the Instruction-Types
#            3rd: name of the file with the Instructions
# OUTPUT: The extended Assembler Description file

use warnings;


$file_type = 0;
$file_insn = 0;
$retVal = open(file_des, $ARGV[0]);
if (!defined $retVal) {
    print STDERR "\nextendAssemblerDescriptionFile: ERROR: Description File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

$retVal = open(file_type, $ARGV[1]);
if (!defined $retVal) {
    print STDERR "\nextendAssemblerDescriptionFile: WARNING: Instruction-Types File \"", $ARGV[1], "\" not found\n\n";
    $file_type = 0;
    $file_insn = 0;
} else {
  $retVal = open(file_insn, $ARGV[2]);
  if (!defined $retVal) {
      print STDERR "\nextendAssemblerDescriptionFile: WARNING: Instructions File \"", $ARGV[2], "\" not found\n\n";
      close(file_type);
      $file_type = 0;
      $file_insn = 0;
  }
}


# $i and $j are line counters. They aren't needed in this script, but are helpfull for debugging.
for ($i=0; $currentLine=<file_des>; $i++) {
    print $currentLine;

    if ($currentLine =~ m/^  type \{/) {
	for ($j=0; $currentLine=<file_type>; $j++) {
	    print $currentLine;
	}
    } else {
	if ($currentLine =~ m/^Instruction \{/) {
	    for ($j=0; $currentLine=<file_insn>; $j++) {
		print $currentLine;
	    }
	}
    }



} # end 'loop over description file'

close(file_des);
if ($file_type != 0) { close(file_type); }
if ($file_insn != 0) { close(file_insn); }

print STDERR "extendAssemblerDescriptionFile:\tAssembler Description File successfully extended.\n";
exit 0;
