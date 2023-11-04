#!/bin/bash

echo "User name: KimDongHyun"
echo "Student Number: 12191556"
echo "[ MENU ]"
echo "1. Get the data of the movie identified by a specific 'movie id' from 'u.item'"
echo "2. Get the data of action genre movies from 'u.item'"
echo "3. Get the average 'rating' of the movie identified by specific 'movie id' from 'u.data'"
echo "4. Delete the 'IMDb URL' from 'u.item'"
echo "5. Get the data about users from 'u.user'"
echo "6. Modify the format of 'release date' in 'u.item'"
echo "7. Get the data of movies rated by a specific 'user id' from 'u.data'"
echo "8. Get the average 'rating' of movies rated by users with 'age' between 20 and 29 and 'occupation' as 'programmer'"
echo "9. Exit"
echo "------------------------------------------------------------------------------------------------------------------"

while true
do
	read -p "Enter you choice [ 1-9 ] " number
	case $number in
		"1")
			read -p "Please enter 'movie id' (1~1682): " m_id
			cat u.item | awk -v movie_id=$m_id 'NR==movie_id {print $0}'
			;;
		"2")
			read -p "Do you want to get the data of 'action' genre movies from 'u.item'?(y/n): " answer
		  	case $answer in
				"y")
					cat u.item | awk -F\| '$7 == 1 {print $1, $2}' | head -n 10
					;;
				"n")
					echo "Please try again.........."
					;;
			esac
			;;
		"3")
			read -p "Please enter 'movie id' (1~1682): " m_id
			cat u.data | awk -v movie_id=$m_id '$2==movie_id {sum_rate += $3; sum_line += ($2/$2); avg = sum_rate/sum_line} END {print avg}'
			;;
		"4")
			read -p "Do you want to delete the 'IMDb URL' from 'u.item'?(y/n): " answer
			case $answer in
				"y")
					cat u.item | sed -E 's/\h[^\)]*\)//g' | head -n 10
					;;
				"n")
					echo "Please try again.........."
					;;
			esac
			;;
		"5")
			read -p "Do you want to get the data about users from 'u.user'?(y/n): " answer
			case $answer in
				"y")
					cat u.user | awk -F\| '{gender = ($3 == "M") ? "male" : "female"; printf "user %s is %s years old %s %s\n", $1, $2, gender, $4}' | head -n 10
					;;
				"n")
					echo "Please try again.........."
					;;
		   	esac
			;;
		"6")
			read -p "Do you want to modify the format of 'release data' in 'u.item'?(y/n): " answer
			case $answer in
				"y")
					cat u.item | sed -E 's/([0-9]{2})-([A-Za-z]{3})-([0-9]{4})/\3\2\1/g' | sed -E 's/Jan/01/g;s/Feb/02/g;s/Mar/03/g;s/Apr/04/g;s/May/05/g;s/Jun/06/g;s/Jul/07/g;s/Aug/08/g;s/Sep/09/g;s/Oct/10/g;s/Nov/11/g;s/Dec/12/g' | tail -n 10
					;;
				"n")
					echo "Please try again.........."
					;;
			esac
			;;
		"7")
			read -p "Please enter the 'user id' (1~943): " u_id
			cat u.data | awk -v user_id=$u_id '$1 == user_id {print $2}' | sort -n > user_movie_id.txt
			cat user_movie_id.txt | awk '{print $0;if(NR > 0) printf "|"}' | tr -d '\n'
			echo -e '\n'
			for i in $(seq 1 10)
			do
				m_id=$(cat user_movie_id.txt | awk -v idx=$i 'NR==idx {print $1}')
				cat u.item | awk -F\| -v movie_id=$m_id '$1==movie_id {printf "%d|%s\n", $1, $2}'
			done
			;;
		"8")
			read -p "Do you want to get the average 'rating' of movies rated by users with 'age' between 20 and 29 and 'occupation' as 'programmer'?(y/n): " answer
			case $answer in
				"y")
					cat u.user | awk -F\| '$2 >= 20 && $2 < 30 && $4 == "programmer" {print $1}' > twenty_programmer.txt

					;;
				"n")
					echo "Please try again.........."
					;;
			esac
			;;
		"9")
			echo "Bye!"
			exit 0
			;;
	esac
done
