echo "Server Performance Statistics"
echo "============================"

echo ""
echo "CPU Performance"
top -bn1 | grep "Cpu(s)" | awk '{print "User:", $2, "System:", $4, "Idle:", $8}'

echo ""
echo -n "Total Space : " ; df -h / | awk 'NR==2 {print $2}'
echo -n "Avalible Disk Space : " ; df -h | awk '/drivers/{print $3}'

echo ""
echo "Memory"
echo -n "Total Memory : "; free -h | awk '/Mem/ {print $2}'
echo -n "Used Memory  : "; free -h | awk '/Mem/ {print $3}'
echo -n "Free Memory  : "; free -h | awk '/Mem/ {print $4}'
