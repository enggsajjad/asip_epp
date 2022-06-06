#!/usr/bin/perl

use warnings;

$im_start = '00000000';
$dm_start = '00010000';

#$im_start = '0000';
#$dm_start = '0800';

if ($#ARGV >= 0) {
	$im_file = $ARGV[0];
	if ($#ARGV == 1) {
		$dm_file = $ARGV[1];
	} elsif ($#ARGV == 2) {
		$dm_file = $ARGV[1];
		$dm_start = $ARGV[2];
	} else {
		$dm_file = undef;
	}
} else {
	print "Usage: $0 IMfile [DMfile DMStartAddr]\n";
	print "DMStartAddr must be an 8 digit hex number, i.e.: 00000800\n";
	exit 1;
}



open IM_FILE, "<$im_file" or die "Couldn't open $im_file";
print '@' . $im_start . ' ';
while ($line = <IM_FILE>) {
	next if $line !~ /^[0-9a-fA-F]{8}\s+([0-9a-fA-F]{8})\s+.*$/;
	print "$1 ";
}
print "\n";

if (defined $dm_file) {
	open DM_FILE, "<$dm_file" or die "Couldn't open $dm_file";
	print '@' . $dm_start . ' ';
	while ($line = <DM_FILE>) {
		next if $line !~ /^[0-9a-fA-F]{8}\s+([0-9a-fA-F]{2,8})\s+.*$/;
		print "$1 ";
	}
	print "\n";
}


exit 0;
