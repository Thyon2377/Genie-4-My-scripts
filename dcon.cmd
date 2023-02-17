action goto exit when ^What were you referring to|^Perhaps you should be

start:
send get %1 %2 from $pack
waitforre ^You get
send put my %1 %2 in my $container1
waitforre ^You put
goto start

exit:
send inventory $container1
exit