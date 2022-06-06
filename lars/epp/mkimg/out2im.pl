#!/usr/bin/perl
$flag  = 0;
$count = 0;
$upperaddr="0000";
$tmp=0;
while(<>)
{
	chop;
	@buf = split(/\t/);

#	print "DEBUG: LINE: ", $_, "\n";

	if ($buf[5] eq ".text") {
#	    print "DEBUG: FLAG = 0\n";
	    $flag = 1;
	}
	if ($buf[5] eq ".data") {
	    $flag = 0;
#	    print "DEBUG: FLAG = 1\n";
	}

	if ($flag == 1) {
		if($buf[1] eq "0000"){
			$tmp=$tmp+1;
			if($tmp==2){
				$upperaddr="0001";
			}
		}
		if ($buf[1]=~/^[0-9a-f]{4}$/)
		{
			$buf[1]=uc $buf[1];
			$buf[2]=uc $buf[2];
			print $upperaddr;
			print $buf[1];
			print " ";
			print $buf[2];
			print " -- ";
			print $buf[4];
			print " ";
			print $buf[5];
			print "\n";
			$count+=1; # osaka=4 (byte)/ dlx_basis=1 (word)
		}
	}
}
printf "%08x FFFFFFFF -- halt\n", $count;

