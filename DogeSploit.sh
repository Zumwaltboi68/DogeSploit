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

# Define Functions
function install_prerequisites() {
    echo -e "${yellow}[*] Installing Prerequisites...${reset}"
    sudo apt-get update
    sudo apt-get install -y python3 python3-pip git
}

function install_hacker_tools() {
    echo -e "${yellow}[*] Installing Hacker Tools...${reset}"
    pip3 install -r requirements.txt
}

function create_menu() {
    # Create an array of tool names and descriptions
    tools=(
        "Nmap: Network Scanner"
        "Wireshark: Network Protocol Analyzer"
        "Metasploit: Penetration Testing Framework"
        "John the Ripper: Password Cracker"
        "Aircrack-ng: Wi-Fi Cracking Suite"
        "Maltego: Open Source Intelligence Gathering Tool"
        "Social Engineering Toolkit (SET): Phishing and Social Engineering Framework"
        "Kali Linux: Penetration Testing Distribution"
    )

    # Create a loop to generate the menu options
    for i in "${!tools[@]}"; do
        echo -e "${yellow}[$(($i + 1))] ${tools[$i]}${reset}"
    done

    # Add the exit option
    echo -e "${yellow}[0] Exit${reset}"
}

function handle_user_input() {
    # Read the user's input
    read -p "Enter a number: " choice

    # Use a case statement to handle the user's input
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

# Run DogeSploit
install_prerequisites
install_hacker_tools
while true; do
    clear
    create_menu
    handle_user_input
done
