#! /bin/bash
# Script for Git commit - By - MK
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
reset=$(tput sgr0)


echo "${red} ssh_add${reset}"
ssh-add -D; ssh-add
echo "${magenta} Git status${reset}"
git status 
echo "--------------------------"
cd ~/git
echo "${cyan} Git add all${reset}"
git add . -v
echo "--------------------------"
echo "${green} Git commit${reset}"
git commit -m "Changes" -v
echo "--------------------------"
echo "${yellow} Git status${reset}"
git status 
echo "--------------------------"
echo "${blue} Git push started${reset}"
git push -u origin master
echo "--------------------------"
echo "${magenta}Successfully updated${reset}"
