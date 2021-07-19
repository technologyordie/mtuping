size=1400; #lower this number (in multiples of 4) if required.
scan=1; 
while [ $scan == 1 ]  
do 
  ping -s $size -c1 -D -t1  $1 &>/dev/null; #Mac
  #ping -s $size -c 1 -M do $1 &>/dev/null; #Linux
  if [[ $? != 0 ]];
  then
    break;
  fi
  ((size+=4)); 
done; 

echo "Max MTU size: $((size-4+20+8))" #adds 20 bytes for ip and 8 for ICMP
