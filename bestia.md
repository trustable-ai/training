Create script bestia.sh and a bestia.ps1 to set variables and download ops

the script should set the variables:

- OPS_REPO=https://github.com/nuvolaris/bestia 
- OPS_BRANCH=bestia

on windows, set the system variables
on linux, add to .bashrc and .profile
on mac add to .bashrc and .zshrc

Display a message asking to close the terminal before using it and ask for the user to press a key.

Dowloaad ops invoking

curl -fsSL n7s.co/get-ops | bash on Linux/Mac
irm n7s.co/get-ops-exe | iex on Windows

