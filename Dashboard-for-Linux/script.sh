#!/usr/bin/env sh
# Edited by Naga Ravi Chaitanya Elluri

echo "CPU AND MEMORY RESOURCES-------------------"
cpuLoad=$(uptime | cut -c31-80)
freeMem=$(free -m | grep Mem | cut -d" " -f28)
MemLimit=1000
echo "CPU $cpuLoad         RAM= ${freeMem}MB"
if [ $freeMem -gt $MemLimit ]
then
        echo "Low Memory" | mail -s "Low Memory" naga.elluri@colorado.edu
       
else
        echo "Enough Memory Left"
      
fi
echo " "


echo "NETWORK CONNECTIONS-----------------------"
loReceived=$(cat /proc/net/dev | grep lo | tr -s ' ' | cut -d" " -f3)
loTransmitted=$(cat /proc/net/dev | grep lo | tr -s ' ' | cut -d" " -f11)
ethReceived=$(cat /proc/net/dev | grep eth0 | tr -s ' ' | cut -d" " -f3)
ethTransmitted=$(cat /proc/net/dev | grep eth0 | tr -s ' ' | cut -d" " -f11)
internetVal=$(ping -c2 8.8.8.8 | grep "packet loss" | cut -d"," -f3 | cut -d" " -f2 | cut -d"%" -f1)
val=0
echo "lo Bytes received : $loReceived"
echo  "Bytes Transmitted : $loTransmitted"
echo "eth0 Bytes received : $ethReceived"   
echo "Bytes Transmitted : $ethTransmitted"
if [ $internetVal -eq $val ]
then
        echo "Network Connectivity: YES"
else
        echo "NEtwork Connectivity: NO"
fi
echo " "


echo "ACCOUNT INFORMATION------------------------"

freqUser=$(cat /etc/passwd | cut -d":" -f7 | sort | uniq -c | sort -n | tail -n1 | cut -d" " -f7)
totalUsers=$(cat /etc/passwd | wc -l)
activeUsers=$(users | wc -l)
echo "Most Frequently used shell : $freqUser"
echo "Total users : $totalUsers"
echo "Number Active : $activeUsers "
