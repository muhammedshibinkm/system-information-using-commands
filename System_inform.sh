#!/bin/bash
opt="y"
while [[ "$opt" = "y"  ||  "$opt" = "Y" ]]
do
	  echo "	1.Currently logged users.
		2.Your shell directory.
		3.Home directory.
		4.OS name & version.
		5.Current working directory.
		6.Number of users logged in.
		7.Show all available shells in your system.
		8.Hard disk information.
		9.CPU information.
		10.Memory information.
		11.File system information.
		12.Currently running process."
	read -p "Enter the choice : " num
	case $num in
        	1) echo "Currently logged users is "$(whoami)""
                	;;
        	2) echo "Your shell directory is $(echo $SHELL)"
                	;;
		3) echo "Home directory is $($HOME)"
			;;
		4) echo "OS name & version is $(hostnamectl)"
			;;
		5) echo "current working directory is $(pwd)"
			;;
		6)echo "Number of users logged in :-$(who -q)"
			;;
		7) echo "Show all available shells in your system $(cat /etc/shells)"
			;;
		8)echo "Hard disk information:- $(hwinfo)"
			;;
		9)echo "CPU information :- $(lscpu)"
			;;
		10) echo "Memory information :- $(free)"
			;;
		11) echo "File system information :- $(df)"
			;;
		12) echo "Currently running process is $(ps)"
			;;
		*)echo "Error : Invalid option, please enter valid option"
			;;
		
	esac
		read -p "Do you want to continue(y/n)?" opt
done


