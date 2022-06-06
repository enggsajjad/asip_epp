#!/usr/bin/perl

#USAGE 
#./image2mif.pl IM.coe DM.coe IM.mif DM.mif
#OUTPUT
#IM.mif DM.mif

use warnings;

if ($#ARGV >= 0) {
	$im_file = $ARGV[0];
	if ($#ARGV == 1) {
		$dm_file = $ARGV[1];
		$im_mif = "IM.mif";
		$dm_mif = "DM.mif";
	} elsif ($#ARGV == 3) {
		$dm_file = $ARGV[1];
		$im_mif =  $ARGV[2];
		$dm_mif =  $ARGV[3];
	} else {
		$dm_file = undef;
	}
} else {
	print "Usage: $0 IMfile [DMfile DMStartAddr]\n";
	print "DMStartAddr must be an 8 digit hex number, i.e.: 00000800\n";
	exit 1;
}

#my $im_mif = "IM.mif";
open (my $IM_MIF, ">" , $im_mif) || die ("CAN'T OPEN FILE  IM.mif");

open IM_FILE, "<$im_file" or die "Couldn't open $im_file";

  while ($line = <IM_FILE>) {
     if($. > 2){
	$ch1 = chop($line);
	$ch1 = chop($line);
	#print "$line ";
	$hval = hex($line);
	$bval = sprintf ("%032b",$hval);
	print $IM_MIF  "$bval\n";
     }
  }

close $IM_MIF;

################ Data Files #######################
#my $dm_mif = "DM.mif";
open (my $DM_MIF, ">" , $dm_mif) || die ("CAN'T OPEN FILE  DM.mif");

open DM_FILE, "<$dm_file" or die "Couldn't open $dm_file";

  while ($line = <DM_FILE>) {
     if($. > 2){
	$ch1 = chop($line);
	$ch1 = chop($line);
	#print "$line ";
	$hval = hex($line);
	$bval = sprintf ("%032b",$hval);
	print $DM_MIF  "$bval\n";
     }
  }

close $DM_MIF;


exit 0;
