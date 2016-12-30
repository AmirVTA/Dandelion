#!/bin/bash

memTotal_b=`free -b |grep Mem |awk '{print $2}'`
memFree_b=`free -b |grep Mem |awk '{print $4}'`
memBuffer_b=`free -b |grep Mem |awk '{print $6}'`
memCache_b=`free -b |grep Mem |awk '{print $7}'`

memTotal_m=`free -m |grep Mem |awk '{print $2}'`
memFree_m=`free -m |grep Mem |awk '{print $4}'`
memBuffer_m=`free -m |grep Mem |awk '{print $6}'`
memCache_m=`free -m |grep Mem |awk '{print $7}'`

CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
hdd=`df -lh | awk '{if ($6 == "/") { print $5 }}' | head -1 | cut -d'%' -f1`
uptime=`uptime`
ProcessCnt=`ps -A | wc -l`

memUsed_b=$(($memTotal_b-$memFree_b))
memUsed_m=$(($memTotal_m-$memFree_m))
memUsedPrc=$((($memUsed_b*100)/$memTotal_b))


echo "🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹 \r\n"
echo "RAM Total : $memTotal_m MB"
echo "RAM Buffer : $memBuffer_m MB"
echo "RAM Cache : $memCache_m MB"
echo "RAM Free : $memFree_m MB"
echo "RAM Used : $memUsed_m MB"
echo "RAM Usage : $memUsedPrc% \r\n"
echo 'CPU Usage : '"$CPUPer"'%'
echo 'Processes : '"$ProcessCnt"' \r\n'
echo 'Storage : '"$hdd"'% \r\n'
echo 'UPTime : '"$uptime"' \r\n'
echo "🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹🔹 \r\n"
echo "🔗 https://telegram.me/ARKInfoLite \r\n"

-- @AmirVTA
-- @ARKInfo
-- @ARKInfoLite
