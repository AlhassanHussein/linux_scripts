#!/bin/bash

#  ====== FUNCTIONS =====


cpu_info(){
	echo "======= CPU INFO =======";
	lscpu;
	echo "/n";
}

ram_info(){
	
	echo "======= CPU INFO =======";
	free -h;
	echo "/n"
}

disk_info(){
	echo "======= CPU INFO ======="
	df -h
	echo "\n"
}

os_info(){
	echo "======= CPU INFO =======";
	cat /etc/os-release;
	echo "\n";
}

all_info(){
	cpu_info;
	ram_info;
	disk_info;
	os_info;

}
quit(){
break
}




show_menu(){
	echo "==============";
	echo " SELECT YOUR OPTION";
	echo "==============";
	echo "1) CPU INFO";
	echo "2) RAM INFO";
	echo "3) DISK INFO";
	echo "4) OS INFO";
	echo "0) ALL INFORMATION";
	echo "q|Q) EXIT";

}
invaild_option(){
	echo "INVAILD OPTION";
}

while true; do 
	show_menu

	read -p "pleas your choice" choice; 

	case $choice in
		 1) cpu_info;;
		 2) ram_info;;
		 3) disk_info;;
		 4) os_info;;
		 0) all_info;;
	 	 q|Q) break;;
		 *)invaild_option;;
	esac
done

