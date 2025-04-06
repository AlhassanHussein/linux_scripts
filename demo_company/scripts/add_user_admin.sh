echo "PLEASE ENTER THE PATH FOR THE USERS YOU WANT TO ADD ADMIN";
echo ;
echo "$(pwd)";
read users_path;
echo "$users_path";
echo "last";
while read -r user; do
	echo "1";
	echo "$users_path";	
	sudo usermod -aG sudo "$user";
	echo "2";
done < "$users_path";
