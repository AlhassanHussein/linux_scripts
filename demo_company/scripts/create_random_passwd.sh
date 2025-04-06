#!/bin/bash

echo "This script create a RANDOM PASSWORD to the input file and pass it to output file";
echo "CURRANT PATH:$(pwd)";

echo "Please enter the pass of the users file";

read user_input_path;
echo "$user_input_path";
users_output_path="users_output_path.txt";


> "$users_output_path";
echo "2"

while read -r user_name; do
	echo "$user_name";
	echo "3"
	sudo useradd  -m  "$user_name";
	echo "$(id) $user_name";
	echo "4";
	password=$(openssl rand -base64 12);
	echo "5";
	echo "$user_name:$password" | sudo chpasswd;
	echo "6";
	echo "$user_name:$password" >> "$users_output_path";
done < "$user_input_path"
echo "7";
