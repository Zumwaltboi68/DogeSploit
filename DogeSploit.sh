#!/bin/ bash

# Set Constants
doge="Doge"
doge_ascii=$(wget -q -O - https://ascii.dog/woof | head -n 13 | tail -n 12)

# Create DogeSploit Banner
clear
echo -e "\033[38;5;226m"
echo -e "${doge_ascii}\n"
echo -e "${doge}Sploit: The Ethical Hacker's Toolbox\n"
echo -e "\033[0m"

# Define Colors
red="\033[38;5;196m"
green="\033[38;5;82m"
blue="\033[38;5;39m"
reset="\033[0m"

# Define Hacker 工具
hacker_programs=(
    "nmap"
    "wireshark"
    "msfconsole"
    "maltego"
    "aircrack-ng"
    "setoolkit"
    "kali-Linux"
)

# Define Dependencies
prerequisites=(
    "git"
    "python3"
    "pip3"
)

# Install Dependencies
function install_dependenc() {
    for program in "${prerequisites[@]}"
    do
        if ! command -v "$program" &> /dev/null; then
            echo -e "${red}[!] ${program} not found. Installing...${reset} "
            if ! sudo yum install -y "$program" &> /dev/null; then
                echo -e "${red}[!] Error installing ${program}. Please install it maually.${reset} "
                exit 1
            fi
        fi
    done
}

# Install Hacker 工具
function install_hacker_programs() {
    for program in "${hacker_programs[@]}"
    do
        if ! command -v "$program" &> /dev/null; then
            echo -e "${red}[!] ${program} not found. Installing...${reset} "
            if ! sudo pip3 install "$program" &> /dev/null; then
                echo -e "${red}[!] Error installing ${program}. Please install it maually.${reset} "
                exit 1
            fi
        fi
    done
}

# Create Menu
function create_menu() {
    clear
    echo -e "${doge_ascii}\n"
    echo -e "${doge}Sploit: The Ethical Hacker's Toolbox\n"
    echo -e "${blue}[1] Nmap: Network Mapper${reset} "
    echo -e "${blue}[2] Wireshark: Network Protocol Analyzer${reset} "
    echo -e "${blue}[3] MSFconsole: Metaspoit Framework Console${reset} "
    echo -e "${blue}[4] Maltego: Open Source Information Gathering${reset} "
    echo -e "${blue}[5] Aircrack-ng: Wi-Fi Cracking and Security Auditing${reset} "
    echo -e "${blue}[6] Setoolkit: Social Engineering Toolkit${reset} "
    echo -e "${blue}[7] Kali-Linux: Penetration testing distribution${reset} "
    echo -e "${blue}[0] Exit${reset} "
    echo -n " Enter your choice: "
}

# Run Selected Program
function run_program() {
    case $1 in
        1) nmap ;;
        2) wireshark ;;
        3) msfconsole ;;
        4) maltego ;;
        5) aircrack-ng ;;
        6) setoolkit ;;
        7) startkali ;;
        0) exit 0 ;;
        *) echo -e "${red}[!] Invalid choice. Please enter a valid number.${reset} ";;
    esac
}

# Main Function
function main() {
    # Install dependencies
    install_dependenc

    # Install hacker programs
    install_hacker_programs

    # Create menu
    while true; do
        create_menu
        read choice
        run_program $chocie
    done
}

# Run Main Function
main
