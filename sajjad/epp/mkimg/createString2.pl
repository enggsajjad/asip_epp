#!/usr/bin/perl
use warnings;
use strict;

use String::Interpolate;

my $retVal = open("file", $ARGV[0]);
if ($retVal==0) {
    print STDERR "\nERROR: File \"", $ARGV[0], "\" not found\n\n";
    exit 1;
}

my $interpolate = 'String::Interpolate'->new;
my $i;
my $currentLine;
my $currentLine2;

for ($i=0; $currentLine=<file>; $i++) {
#    if ($currentLine =~ m/^(\s*).section(\s+).text/i) {
	if ( $currentLine =~ /^\s+\.string\s+"(.*)"/i) {
		$currentLine2 = $interpolate->($currentLine);
        print map "\t.data.32\t$_\n", unpack 'N*', "$currentLine2\0\0\0";
#		print $currentLine;	
	}
} # end 'loop over file'

close("file");

exit 0;

#my $interpolate = 'String::Interpolate'->new;
##
#while (<>) {
#    if (my ($string) = /^\s+\.string\s+"(.*)"/) {
#        $string = $interpolate->($string);
#        print map "\t.data.32\t$_\n", unpack 'N*', "$string\0\0\0";
#    } else {
#        print;
#    }
#}
