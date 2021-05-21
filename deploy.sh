#!/bin/zsh

vared -p "Enter commit message: " -c message

printf "\e[33m\nBuilding project...\e[39m\n"
hugo -d ../home

printf "\\e[33m\nPushing to Samruddhi17/home.git repository...\e[39m\n\n"
cd ../home
git add .
git commit -m "$message"
git push origin main
printf "\e[32m\nSuccessfully deployed the website!\e[39m"

printf "\e[33m\n\nNow pushing latest changes to Samruddhi17/hugo-home repository...\e[39m\n\n"
cd ../hugo-home
git add .
git commit -m "$message"
git push origin main
printf "\033[0;32m\nSuccessfully pushed changes to the repository!\e[39m\n"