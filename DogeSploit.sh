#!/bin/bash

# Create the DogeSploit banner
echo "  __  __       _       __        __        ______
 / / / /___  (_)___ _/ /____ _/ /_____ _/ / / /___
/ /_/ / __ \/ / __ `/ __/ __ `/ __/ __ `/ / / / __ \
/ __  / /_/ / / /_/ / /_/ /_/ / /_/ /_/ / / / /_/ /
/_/ /_/\____/_/\__,_/\__/\__,_/\__/\__,_/_/_/\____/

 _____            _ _
|  __ \          | | |
| |  \/ ___  ___| | | ___ _ __
| | __ / _ \/ _ \ | |/ _ \ '__|
| |_\ \  __/  __/ | |  __/ |
 \____/\___|\___|_|_|\___|_|
"

# Display the welcome message
echo "Welcome to DogeSploit, the ultimate hacker's toolbox!"

# Check if the user has root privileges
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Please use 'sudo'."
    exit 1
fi

# Update the system
echo "Updating the system..."
apt-get update -y && apt-get upgrade -y

# Install the necessary tools
echo "Installing the necessary tools..."
apt-get install -y aircrack-ng bettercap burp-suite cewl commix dirbuster enum4linux gobuster hashcat hydra john metasploit-framework nmap nikto openvas-scanner sqlmap wifite

# Display the installation results
echo "Installation complete!"

# Create the DogeSploit menu
echo "DogeSploit Menu:"
echo "1. Run aircrack-ng"
echo "2. Run bettercap"
echo "3. Run burp-suite"
echo "4. Run cewl"
echo "5. Run commix"
echo "6. Run dirbuster"
echo "7. Run enum4linux"
echo "8. Run gobuster"
echo "9. Run hashcat"
echo "10. Run hydra"
echo "11. Run john"
echo "12. Run metasploit-framework"
echo "13. Run nmap"
echo "14. Run nikto"
echo "15. Run openvas-scanner"
echo "16. Run sqlmap"
echo "17. Run wifite"
echo "18. Exit"

# Prompt the user to select a tool
echo "Please select a tool to run:"
read choice

# Run the selected tool
case $choice in
    1)
        aircrack-ng
        break
        ;;
    2)
        bettercap
        break
        ;;
    3)
        burp-suite
        break
        ;;
    4)
        cewl
        break
        ;;
    5)
        commix
        break
        ;;
    6)
        dirbuster
        break
        ;;
    7)
        enum4linux
        break
        ;;
    8)
        gobuster
        break
        ;;
    9)
        hashcat
        break
        ;;
    10)
        hydra
        break
        ;;
    11)
        john
        break
        ;;
    12)
        metasploit-framework
        break
        ;;
    13)
        nmap
        break
        ;;
    14)
        nikto
        break
        ;;
    15)
        openvas-scanner
        break
        ;;
    16)
        sqlmap
        break
        ;;
    17)
        wifite
        break
        ;;
    18)
        exit 0
        ;;
    *)
        echo "Invalid choice. Please select a number between 1 and 18."
        ;;
esac
