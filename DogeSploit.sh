#!/bin/Bash

# Create the DogeSploit Banner
echo "  __  __       _       __        __        "
echo " / / / /___  (_)___ _/ /____ _/ /_ _/ / / /___"
echo "/ /_/ / __ \/ / __ `/ __/ __ `/ __/ __ `/ / / / __ \\"
echo "/ __  / /_/ / / /_/ / /_/ /_/ / /_/ /_/ / / / /_/ /"
echo "\_/ \_/\_\__/ \_/\_\__/ \__/ \__/ \__/\_\__/ /_/\_\\"

# Update the system
echo -e "\nUpdating the system..."
apt-get update -y &&
apt-get -y

# Install the necessary tools
echo -e "\nInstalling the necessary tools..."
apt-get install -y aircrack-ng bettercap burp-Suite cewl com mix dirbuster4go gobuster hashcat hydra john metAsploit-framework nmap nbtscan netdiscover openvas-scanner rockyou-wordlist sipvicious slowhttptest snmp-check sslsplit thc-ipv6 wireshark wifite

# Make sure the tools are installed
echo -e "\nChecking for installed tools..."
for tool in aircrack-ng bettercap burp-Suite cewl com-mi dirbuster4go gobuster hashcat hydra john metSploit-framework nmap nbtscan netdiscover openvas-scanner rockyou-wordlist sipvicious slowhttptest snmp-check sslsplit thc-ipv6 wireshark wifite; do
if [ ! -f "/usr/bin/$tool" ] && [ ! -f "/usr/local/bin/$tool" ] && [ ! -f "/opt/bin/$tool" ] ; then
echo -e "\n$tool is not installed. Please install it and run the script again."
exit 1
fi
done

# Create the DogeSploit menu
echo -e "\nDogeSploit Menu:"
echo "1. Run aircrack-ng"
echo "2. Run bettercap"
echo "3. Run burp-Suite"
echo "4. Run cewl"
echo "5. Run com-mi"
echo "6. Run dirbuster4go"
echo "7. Run gobuster"
echo "8. Run hashcat"
echo "9. Run hydra"
echo "10. Run john"
echo "11. Run metSploit-framework"
echo "12. Run nmap"
echo "13. Run nbtscan"
echo "14. Run netdiscover"
echo "15. Run openvas-scanner"
echo "16. Run sipvicious"
echo "17. Run slowhttptest"
echo "18. Run snmp-check"
echo "19. Run sslsplit"
echo "20. Run thc-ipv6"
echo "21. Run wireshark"
echo "22. Run wifite"
echo "23. Exit"

# Prompt the user to select a tool
echo -e "\nPlease select a tool to run (1-23):"
read choice

# Run the selected tool
case $ choice in
    1)
        aircrack-ng
        ;;
    2)
        bettercap
        ;;
    3)
        burp-Suite
        ;;
    4)
        cew
        ;;
    5)
        com-mi
        ;;
    6)
        dirbuster4go
        ;;
    7)
        gobuster
        ;;
    8)
        hashcat
        ;;
    9)
        hydra
        ;;
    10)
        joh
        ;;
    11)
        metSploit-framework
        ;;
    12)
        nmap
        ;;
    13)
        nbtscan
        ;;
    14)
        netdiscover
        ;;
    15)
        openvas-scanner
        ;;
    16)
        sipicious
        ;;
    17)
        slowhtttest
        ;;
    18)
        snmp-check
        ;;
    19)
        ssllplit
        ;;
    20)
        thc-ivp6
        ;;
    21)
        wireshark
        ;;
    22)
        wifite
        ;;
    23)
        exit 0
        ;;
    *)
        echo -e "\nInvalid choice. Please select a number between 1 and 23."
        ;;
esac

# Return to the main menu
echo -e "\nPress any key to return to the main menu..."
read -n 1

# Clear the screen and display the menu again
clear
./DogeSploit.sh
