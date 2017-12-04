#!/bin/bash
clear
user=$(whoami)
ver=$(cat version.txt)
if [ "$user" = "root" ];
then
  cat userwelcome.txt
  echo -e $user
  echo -e "Welcome to:"
fi
if [ "$user" != "root" ];
then
  echo -e "Oops you didnt run as root"
  echo -e "Ill switch to root for you but you need to restart the program"
  echo -e "[*]Switching to root and exiting[*]"
  sudo su
  exit
fi

clear


figlet "Elodie's Hacking Script"
echo -e "\n $ver \n"
echo -e "What do you want to do?"
echo -e "1. Hack a computer/phone \n2. Hack a wifi network \n3. Scan a network \n4. Crack a hash \n5. Do other stuff \n00. Exit the program"

printf "ehs > "
read do

if [ "$do" = "00" ];
then
  clear
  echo -e "[*]Ok bye![*]"
  exit
elif [ "$do" = "menu" ];
then
  clear
  ehs
else
  if [ "$do" = "5" ];
  then
    clear
    echo -e "Options:"
    echo -e "1. Run lscript (lots of tools) \n2. List as much information about the system as possible"
      printf ""
    if [ "$dodo" = "2" ];
    then
      clear
      neofetch
      printf "Press Enter to show more"
      read lol
      ifconfig
      printf "Press Enter to show more"
      read lol
      iwconfig
      printf "Press Enter to show more"
      read lol
      uname -a
      printf "Press Enter to show more"
      read lol
      lscpu
      printf "Press Enter to show more"
      read lol
      lshw
      printf "Press Enter to show more"
      read lol
      lsblk -a
      printf "Press Enter to show more"
      read lol
      lsusb -v
      printf "Press Enter to show more"
      read lol
      lspci -v
      printf "Press Enter to show more"
      read lol
      lsscsi -s
      printf "Press Enter to show more"
      read lol
      dmidecode -t system
      printf "Press Enter to show more"
      read lol
      dmidecode -t memory
      printf "Press Enter to show more"
      read lol
      dmidecode -t bios
      printf "Press Enter to show the last bit"
      read lol
      dmidecode -t processor
      printf "Press Enter to return to menu"
      read lol
      ehs
  fi
fi
