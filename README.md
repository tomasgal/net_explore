"# net_explore"  

Determine the IP address range of your local network. For example, if your IP address is 192.168.1.5 and your subnet mask is 255.255.255.0, the network range will be from 192.168.1.1 to 192.168.1.254.  
Use the ping command to check which IP addresses are active. A simple script can help automate this.  
This script pings each IP address from 192.168.1.1 to 192.168.1.254 and logs the active hosts to active_hosts.txt.  
Once you have a list of active hosts, you can use the net view command to list their shared folders.  
Save the combined script to a file, such as scan_network.bat, and run it from the command prompt. It will scan the network, identify active hosts, and list their shared folders.  
  
Opens in new window with start_ne.bat 
                     
