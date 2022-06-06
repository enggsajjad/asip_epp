#!/usr/bin/perl
#asip04@i80labpc10:~/SS17/package2c/src/arith_wi_uart_CR_0nops:$image2mem4.pl TestData.IM TestData.DM > sajjad.mem
use warnings;

$im_start = '00000000';
#$im_start2 = '00003000';
$im_start2 = '0000f000';
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

$i=0;
$end_data = " ";
$str = " ";
open IM_FILE, "<$im_file" or die "Couldn't open $im_file";
print '@' . $im_start . ' ';
while ($line = <IM_FILE>) {
	next if $line !~ /^[0-9a-fA-F]{8}\s+([0-9a-fA-F]{2,8})\s+.*$/;
	$str = "$1";
#	if ($line  =~ /^00003000/){
	if ($line  =~ /^0000f000/){
		$end_data = "$str";		
		last;
	}
	else
	{
		print "$str";
	}
	$i++;
	if ($i =~ 4)
	{
		print " ";
		$i=0;
	}
}
$i=1;
print "\n";
print '@' . $im_start2 . ' ';
print "$end_data";
while ($line = <IM_FILE>) {
	next if $line !~ /^[0-9a-fA-F]{8}\s+([0-9a-fA-F]{2,8})\s+.*$/;
	print "$1";
	$i++;
	if ($i =~ 4)
		{
			print " ";
			$i=0;
		}
}
print "\n";
$i=0;
if (defined $dm_file) {
	open DM_FILE, "<$dm_file" or die "Couldn't open $dm_file";
	print '@' . $dm_start . ' ';
	while ($line = <DM_FILE>) {
		next if $line !~ /^[0-9a-fA-F]{8}\s+([0-9a-fA-F]{2,8})\s+.*$/;
		print "$1";
	$i++;
	if ($i =~ 4)
		{
			print " ";
			$i=0;
		}
	}
	print "\n";
}

exit 0;
