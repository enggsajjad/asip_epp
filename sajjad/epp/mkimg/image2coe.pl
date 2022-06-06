#!/usr/bin/perl
#USAGE 
#./image2coe.pl TestData.IM TestData.DM
#OUTPUT
#IM.coe DM.coe
use warnings;
use Fcntl qw(SEEK_END);

if ($#ARGV >= 0) {
	$im_file = $ARGV[0];
	if ($#ARGV == 1) {
		$dm_file = $ARGV[1];
	} elsif ($#ARGV == 2) {
		$dm_file = $ARGV[1];
		#$dm_start = $ARGV[2];
	} else {
		$dm_file = undef;
	}
} else {
	print "Usage: $0 IMfile [DMfile DMStartAddr]\n";
	print "DMStartAddr must be an 8 digit hex number, i.e.: 00000800\n";
	exit 1;
}
my $im_coe = "IM.coe";
open (my $IM_COE, ">" , $im_coe) || die ("CAN'T OPEN FILE  IM.coe");

$i=0;
$instr=0;
$end_data = " ";
$str = " ";
open IM_FILE, "<$im_file" or die "Couldn't open $im_file";
print $IM_COE "MEMORY_INITIALIZATION_RADIX=16;\n";
print $IM_COE "MEMORY_INITIALIZATION_VECTOR=\n";

while ($line = <IM_FILE>) {
	next if $line !~ /^[0-9a-fA-F]{8}\s+([0-9a-fA-F]{2,8})\s+.*$/ ;
	$str = "$1";
	if ($line  =~ /^00003000/){
		$end_data = "$str";		
		last;
	}
	else
	{
		print $IM_COE  "$str";
	}
	$i++;
	if ($i =~ 4)
	{
		print $IM_COE  ",\n";
		$instr++;
		$i=0;
	}
}

$j=0;
#0x3000/4=3072
for( $j = $instr; $j < 3072; $j = $j +1){
   print  $IM_COE "00000000,\n";
}

$i=1;
print $IM_COE  "$end_data";
while ($line = <IM_FILE>) {
	next if $line !~ /^[0-9a-fA-F]{8}\s+([0-9a-fA-F]{2,8})\s+.*$/;
	print $IM_COE  "$1";
	$i++;
	if ($i =~ 4)
		{
			print $IM_COE  ",\n";
			$i=0;
		}
}
close $IM_COE;

#replace the last comma with semicolon
open ($IM_COE, "+<" , $im_coe) || die ("CAN'T OPEN FILE  IM.coe");
seek $IM_COE, -3, SEEK_END;
print $IM_COE ";\n";
close $IM_COE;

################ DM.coe  #######################
my $dm_coe = "DM.coe";
open (my $DM_COE, ">" , $dm_coe) || die ("CAN'T OPEN FILE  DM.coe");

print $DM_COE "MEMORY_INITIALIZATION_RADIX=16;\n";
print $DM_COE "MEMORY_INITIALIZATION_VECTOR=\n";

$i=0;
if (defined $dm_file) {
	open DM_FILE, "<$dm_file" or die "Couldn't open $dm_file";
	while ($line = <DM_FILE>) {
		next if $line !~ /^[0-9a-fA-F]{8}\s+([0-9a-fA-F]{2,8})\s+.*$/;
		print $DM_COE  "$1";
	$i++;
	if ($i =~ 4)
		{
			print  $DM_COE ",\n";
			$i=0;
		}
	}
#	print $DM_COE  "\n";
}

close $DM_COE;

#replace the last comma with semicolon
open ($DM_COE, "+<" , $dm_coe) || die ("CAN'T OPEN FILE  DM.coe");
seek $DM_COE, -2, 2;
print $DM_COE ";\n";
close $DM_COE;

#####################
exit 0;
