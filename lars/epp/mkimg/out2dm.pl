#!/usr/bin/perl

$flag = 1;
$byte = 0;
$dat = "";
$addr="";
$upperaddr="0000";
$tmp=0;
$addrVal = 0;
while(<>)
{
    chop;
    @buf = split(/\t/);

#    print "DEBUG: LINE: ", $_, "\n";

    if ($buf[5] eq ".text") {
#	print "DEBUG: FLAG = 0\n";
	$flag = 0; 
    }
    if ($buf[5] eq ".data") {
	$flag = 1; 
#	print "DEBUG: FLAG = 1\n";
    }


    if ($flag == 1) {	
	if ($buf[1]=~/^[0-9a-f]{4}$/)
	{
#	    print "DEBUG: ", $buf[0],", ",$buf[1],", (", uc $buf[1], "), ", $buf[2],", (", uc $buf[2], "), ", $buf[3],", ",$buf[4],", ",$buf[5],"\n";
	    $buf[1]=uc $buf[1];
	    $buf[2]=uc $buf[2];
	    
	    if($buf[1] eq "0000"){
#		print "DEBUG: buf[1] == 0000\n";
		$tmp = $tmp + 1;
		if($tmp == 2){
#		    print "DEBUG: tmp == 2\n";
		    $upperaddr="0001";
		}
	    }
	    
	    if ( ($buf[4]=~/\A\.data\.32/) )
	    {
		padding();
		$byte=4;
		$addr=$buf[1];
		$addrVal=hex($buf[1]);
		$dat=$buf[2];
	    }
	    if($buf[4]=~/\A\.data\.16/)
	    {
		padding();
		if($byte==0)
		{
		    $addr=$buf[1];
		    $addrVal=hex($buf[1]);
		}
		$byte=$byte + 2;
		$dat=$dat . $buf[2];
		
	    }
	    if($buf[4]=~/\A\.data\.8/)
	    {
		padding();
		if($byte==0)
		{
		    $addr=$buf[1];
		    $addrVal=hex($buf[1]);
		}
		$byte=$byte + 1;
		$dat=$dat . $buf[2];
	    }
	    if($buf[4]=~/\A\.space/)
	    {
		padding();
		if($byte==0)
		{
		    $addr=$buf[1];
		    $addrVal=hex($buf[1]);
		}
		if($buf[5]==1)
		{
		    $byte=$byte + 1;
		    $dat=$dat . "00";
		}
		if($buf[5]==2)
		{
		    $byte=$byte + 2;
		    $dat=$dat . "0000";
		}
		if($buf[5]==4)
		{
		    $byte=$byte + 4;
		    $dat=$dat . "00000000";
		    $addr=$buf[1];
		    $addrVal=hex($buf[1]);
		}
	    }
	    if($byte == 4){
		print $upperaddr;
		print $addr;
		print " ";
		print $dat;
		print "\n";
		$byte=0;
		$dat="";
	    }
	    
	}
    }
}
	if($byte == 1){
	    $dat=$dat . "000000";
	}
	if($byte == 2){
	    $dat=$dat . "0000";
	}
	if($byte == 3){
	    $dat=$dat . "00";
	}
	if($byte > 0){
	    print $upperaddr;
	    print $addr;
	    print " ";
	    print $dat;
	    print "\n";
	    $byte=0;
	    $dat="";
	}



sub padding{
    if($byte > 0){
    #print "DEBUG: PADDING: addrVal:", $addrVal, ", byte:", $byte, ", .+.:", $addrVal+$byte, ", buf1:", $buf[1], ", hex:",  hex(uc $buf[1]), "\n";
	if (($addrVal+$byte) != hex(uc $buf[1])){  # This condition is true, whenn the allignment has changed (e.g. byte to int) and a gap in DM has to be filled
#	    print "DEBUG: PADDING: -------- NOT EQUAL !!!! --------\n";
	    if($byte == 1){
		$dat=$dat . "000000";
	    }
	    if($byte == 2){
		$dat=$dat . "0000";
	    }
	    if($byte == 3){
		$dat=$dat . "00";
	    }
	    print $upperaddr;
	    print $addr;
	    print " ";
	    print $dat;
	    print "  -- automatic padding by out2dm.pl\n";
	    $byte=0;
	    $dat="";
	}
    }
}
