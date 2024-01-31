#!/bin/bash

# Set Variables
doge="Doge"
doge_ascii=$(curl -s https://ascii.dog/woof | head -n 13 | tail -n 12)
yellow=$(tput setaf 3)
reset=$(tput sgr0)

# Create DogeSploit Banner
clear
echo -e "${yellow}
${doge_ascii}
${doge}Sploit: The Ethical Hacker's Toolbox
${reset}"

# Install Prerequisites
echo -e "${yellow}[*] Installing Prerequisites...${reset}"
sudo apt-get update
sudo apt-get install -y python3 python3-pip git

# Install Hacker Tools
echo -e "${yellow}[*] Installing Hacker Tools...${reset}"
pip3 install -r requirements.txt

# Create DogeSploit Menu
function menu() {
    clear
    echo -e "${yellow}[1] Nmap: Network Scanner${reset}"
    echo -e "${yellow}[2] Wireshark: Network Protocol Analyzer${reset}"
    echo -e "${yellow}[3] Metasploit: Penetration Testing Framework${reset}"
    echo -e "${yellow}[4] John the Ripper: Password Cracker${reset}"
    echo -e "${yellow}[5] Aircrack-ng: Wi-Fi Cracking Suite${reset}"
    echo -e "${yellow}[6] Maltego: Open Source Intelligence Gathering Tool${reset}"
    echo -e "${yellow}[7] Social Engineering Toolkit (SET): Phishing and Social Engineering Framework${reset}"
    echo -e "${yellow}[8] Kali Linux: Penetration Testing Distribution${reset}"
    echo -e "${yellow}[0] Exit${reset}"
    read -p "Enter a number: " choice
    case $choice in
        1) nmap ;;
        2) wireshark ;;
        3) msfconsole ;;
        4) john ;;
        5) aircrack-ng ;;
        6)maltego ;;
        7) set ;;
        8) kali ;;
        0) exit 0 ;;
        *) echo -e "${yellow}Invalid choice. Please enter a valid number.${reset}";;
    esac
}

# Define Tool Functions
function nmap() {
    echo -e "${yellow}[*] Starting Nmap...${reset}"
    nmap
    echo -e "${yellow}[*] Nmap scan completed. Press any key to continue...${reset}"
    read -s -n 1
}

function wireshark() {
    echo -e "${yellow}[*] Starting Wireshark...${reset}"
    wireshark
}

function msfconsole() {
    echo -e "${yellow}[*] Starting Metasploit...${reset}"
    msfconsole
}

function john() {
    echo -e "${yellow}[*] Starting John the Ripper...${reset}"
    john
}

function aircrack-ng() {
    echo -e "${yellow}[*] Starting Aircrack-ng...${reset}"
    aircrack-ng
}

function maltego() {
    echo -e "${yellow}[*] Starting Maltego...${reset}"
    maltego
}

function set() {
    echo -e "${yellow}[*] Starting Social Engineering Toolkit...${reset}"
    set
}

function kali() {
    echo -e "${yellow}[*] Starting Kali Linux...${reset}"
    sudo kali-start
}

# Run DogeSploit Menu
while true; do
    menu
done
