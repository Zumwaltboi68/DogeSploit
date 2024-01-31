#!/bin/bash

# DogeSploit: The Ultimate Hacker's Toolbox

# Display a visually appealing ASCII art banner
echo -e "\e[33m    ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄  ▄████████"
echo -e "\e[33m  ▐░░░░░░░░░░░░░░▌▐░░░░░░░░░░░░▌▐░░░░░░░░░░░░▌▐█▀▌▀▄▄▄▄"
echo -e "\e[33m  ▐░█▀▀▀▀▀▀▀▀▀▀▀░▌▐░█▀▀▀▀▀▀▀▀▀▀░▌▐░█▀▀▀▀▀▀▀▀▀▀░▌▀▀▄▄▄▀▀▀"
echo -e "\e[33m  ▐█▄▄▄▄▄▄▄▄▄▄▄▄▄█▌▐█▄▄▄▄▄▄▄▄▄▄▄▄█▌▐█▄▄▄▄▄▄▄▄▄▄▄▄█▌▀▀▀▀▀▄▄"
echo -e "\e[33m  ▐█░░░░░░░░░░░░░░█▌▐█░░░░░░░░░░░░█▌▐█░░░░░░░░░░░░█▌▀▄▄▄▀▀"
echo -e "\e[33m  ▐█░░░░░░░░░░░░░░█▌▐█░░░░░░░░░░░░█▌▐█░░░░░░░░░░░░█▌▀▄▀▄▄▄"
echo -e "\e[33m  ▐█░░░░░░░░░░░░░░█▌▐█░░░░░░░░░░░░█▌▐█░░░░░░░░░░░░█▌▀▄▄▄▀▀"
echo -e "\e[33m  ▐█▄▄▄▄▄▄▄▄▄▄▄▄▄█▌▐█▄▄▄▄▄▄▄▄▄▄▄▄█▌▐█▄▄▄▄▄▄▄▄▄▄▄▄█▌▀▄▄▄▀▀\n"
echo -e "\e[93m _        _   _       ____   ____  "
echo -e "\e[93m| |      | | | |     |  _ \ / __ \ "
echo -e "\e[93m| |  __ _| | | | ___ | |_) | |  | |"
echo -e "\e[93m| | / _` | | | |/ _ \|  _ <| |  | |"
echo -e "\e[93m| || (_| | |_| | (_) | |_) | |__| |"
echo -e "\e[93m|_| \__,_|\__,_|\___/|____/ \____/ "

# Check if the user is running the script as root
if [ "$(id -u)" != "0" ]; then
  echo -e "\e[31m[!] This script must be run as root. Please use 'sudo'."
  exit 1
fi

# Create a temporary directory for the tools
tmp_dir=$(mktemp -d)

# Download and install the tools
echo -e "\e[32m[*] Downloading and installing tools..."

# Initialize progress bar
progress_bar() {
  local width=50
  local progress=$1
  local done

  done=$(printf %.2f $progress)
  [ $done -ge 1 ] && done=1

  clear
  printf "\e[K\r[%-${width}s]%3d%%" "=" $(( 100 * $done ))
  printf "\e[K"
}

tool_count=$(find tools -maxdepth 1 -type d | wc -l)
index=1

for tool in tools/*; do
  tool_name=$(basename $tool)

  # Check if the tool is already installed
  if ! command -v $tool_name &> /dev/null; then
    echo -e "\e[32m[*] Installing $tool_name..."

    # Install the tool
    (
      cd $tool
      ./install.sh &> /dev/null
    )

    # Update the progress bar
    progress_bar $(( 100 * $index / $tool_count ))
    index=$((index + 1))
  else
    echo -e "\e[33m[*] $tool_name is already installed."
  fi
done

# Clean up the temporary directory
rm -rf $tmp_dir

# Display a success message
echo -e "\e[32m[!] Installation complete. DogeSploit is now ready to use."

# Print usage instructions
echo -e "\e[93mUsage: ./dogeSploit.sh"
echo -e "\tAvailable commands:"
echo -e "\t\tnmap: Launch Nmap"
echo -e "\t\twireshark: Launch Wireshark"
echo -e "\t\tmsfconsole: Launch Metasploit Framework console"
echo -e "\t\tset: Launch Social Engineering Toolkit"
echo -e "\t\tjohn: Launch John the Ripper"
echo -e "\t\taircrack-ng: Launch Aircrack-ng"
echo -e "\t\thashcat: Launch Hashcat"
echo -e "\t\maltego: Launch Maltego"
echo -e "\t\thelp: Display this help message"
echo -e "\t\texit: Exit DogeSploit"

# Start the interactive shell
while true; do
  echo -e "\e[93mDogeSploit> "
  read command

  case $command in
    "nmap")
      nmap
      ;;
    "wireshark")
      wireshark
      ;;
    "msfconsole")
      msfconsole
      ;;
    "set")
      set
      ;;
    "john")
      john
      ;;
    "aircrack-ng")
      aircrack-ng
      ;;
    "hashcat")
      hashcat
      ;;
    "maltego")
      maltego
      ;;
    "help")
      echo -e "\e[93mUsage: ./dogeSploit.sh"
      echo -e "\tAvailable commands:"
      echo -e "\t\tnmap: Launch Nmap"
      echo -e "\t\twireshark: Launch Wireshark"
      echo -e "\t\tmsfconsole: Launch Metasploit Framework console"
      echo -e "\t\tset: Launch Social Engineering Toolkit"
      echo -e "\t\tjohn: Launch John the Ripper"
      echo -e "\t\taircrack-ng: Launch Aircrack-ng"
      echo -e "\t\thashcat: Launch Hashcat"
      echo -e "\t\maltego: Launch Maltego"
      echo -e "\t\thelp: Display this help message"
      echo -e "\t\texit: Exit DogeSploit"
      ;;
    "exit")
      echo -e "\e[31m[!] Exiting DogeSploit."
      exit 0
      ;;
    *)
      echo -e "\e[31m[!] Invalid command. Please enter a valid command."
      ;;
  esac
done
