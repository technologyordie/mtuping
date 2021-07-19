# mtuping
A simple PING shell script for scanning the MTU size of a link.

This script includes options to work on both Mac or Linux.  Simply 
comment / uncomment lines 5 or 6 as your application requires. 

As an exmaple, here is a test first against the close side of a 
GRE tunnel interface and then again against the remote GRE tunnel 
interface.  As you can see the tunnel overhead reduces the MTU to
the far end of the tunnel

User@MacBook-Pro Desktop % ./pingmtu.sh 10.1.1.5
Max MTU size: 1500

User@MacBook-Pro Desktop % ./pingmtu.sh 10.1.1.6
Max MTU size: 1476
