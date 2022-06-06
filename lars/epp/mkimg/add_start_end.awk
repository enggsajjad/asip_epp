{
	if($2 == ".text"){
	  print $0 ;
	  while(getline < sprintf("%s/startup_dlx.s", ENVIRON["COMPILER_TEMP_DIR"]) > 0)
	    print
	}

	else
	  print $0 ;
}
END {
	while(getline < sprintf("%s/printok.s",ENVIRON["MKIMG_DIR"]) > 0)
	  print
	while(getline < sprintf("%s/printno.s",ENVIRON["MKIMG_DIR"]) > 0)
	  print
	while(getline < sprintf("%s/exit_dlx.s",ENVIRON["MKIMG_DIR"]) > 0)
	  print
}
