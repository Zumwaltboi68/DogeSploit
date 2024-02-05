#!/bin/bash

# DogeSploit - Ethical Hacking Tool Box

# Initialize Variables
RED='\033[0;31m'          # Red color
GREEN='\033[0;32m'        # Green color
YELLOW='\033[0;33m'       # Yellow color
BLUE='\033[0;34m'         # Blue color
MAGENTA='\033[0;35m'     # Magenta color
RESET='\033[0m'           # Reset color

# Display Welcome Message
echo -e "${GREEN}Welcome to DogeSploit - Ethical Hacking Tool Box!${RESET}"

# Display Options
PS3='Please select a hacking tool category: '
options=(
    "Cracking Tools"
    "RAT Tools"
    "Pen Test Tools"
    "DDoS Tools"
    "Phishing Tools"
    "Exit"
)
select opt in "${options[@]}"; do
    case "$opt" in
        "Cracking Tools")
            # Display Cracking Tools
            PS3='Please select a cracking tool: '
            cracking_tools=(
                "John the Ripper"
                "Hashcat"
                "Cain and Abel"
                "Ophcrack"
                "RainbowCrack"
                "Back to Main Menu"
            )
            select tool in "${cracking_tools[@]}"; do
                case "$tool" in
                    "John the Ripper")
                        # Install John the Ripper
                        sudo apt install john -y
                        echo -e "${GREEN}John the Ripper installed successfully!${RESET}"
                        break
                        ;;
                    "Hashcat")
                        # Install Hashcat
                        sudo apt install hashcat -y
                        echo -e "${GREEN}Hashcat installed successfully!${RESET}"
                        break
                        ;;
                    "Cain and Abel")
                        # Install Cain and Abel
                        sudo apt install cain-and-abel -y
                        echo -e "${GREEN}Cain and Abel installed successfully!${RESET}"
                        break
                        ;;
                    "Ophcrack")
                        # Install OPHCrack
                        sudo apt install ophcrack -y
                        echo -e "${GREEN}Ophcrack installed successfully!${RESET}"
                        break
                        ;;
                    "RainbowCrack")
                        # Install RainbowCrack
                        sudo apt install rainbowcrack -y
                        echo -e "${GREEN}RainbowCrack installed successfully!${RESET}"
                        break
                        ;;
                    "Back to Main Menu")
                        break
                        ;;
                    *)
                        echo -e "${RED}Invalid selection!${RESET}"
                        break
                        ;;
                esac
            done
            ;;
        "RAT Tools")
            # Display RAT Tools
            PS3='Please select a RAT tool: '
            rat_tools=(
                "Metasploit Framework"
                "Covenant"
                "Empire"
                "DarkComet"
                "Remnux"
                "Back to Main Menu"
            )
            select tool in "${rat_tools[@]}"; do
                case "$tool" in
                    "Metasploit Framework")
                        # Install Metasploit Framework
                        sudo apt install metasploit-framework -y
                        echo -e "${GREEN}Metasploit Framework installed successfully!${RESET}"
                        break
                        ;;
                    "Covenant")
                        # Install Covenant
                        sudo apt install covenant -y
                        echo -e "${GREEN}Covenant installed successfully!${RESET}"
                        break
                        ;;
                    "Empire")
                        # Install Empire
                        sudo apt install empire -y
                        echo -e "${GREEN}Empire installed successfully!${RESET}"
                        break
                        ;;
                    "DarkComet")
                        # Install DarkComet
                        sudo apt install darkcomet -y
                        echo -e "${GREEN}DarkComet installed successfully!${RESET}"
                        break
                        ;;
                    "Remnux")
                        # Install Remnux
                        sudo apt install remnux -y
                        echo -e "${GREEN}Remnux installed successfully!${RESET}"
                        break
                        ;;
                    "Back to Main Menu")
                        break
                        ;;
                    *)
                        echo -e "${RED}Invalid selection!${RESET}"
                        break
                        ;;
                esac
            done
            ;;
        "Pen Test Tools")
            PS3='Please select a Pen Test tool: '
            pen_test_tools=(
                "Kali Linux"
                "Nmap"
                "Wireshark"
                "Burp Suite"
                "OWASP ZAP"
                "Back to Main Menu"
            )
            select tool in "${pen_test_tools[@]}"; do
                case "$tool" in
                    "Kali Linux")
                        # Install Kali Linux
                        sudo apt install kali-linux-full -y
                        echo -e "${GREEN}Kali Linux installed successfully!${RESET}"
                        break
                        ;;
                    "Nmap")
                        # Install Nmap
                        sudo apt install nmap -y
                        echo -e "${GREEN}Nmap installed successfully!${RESET}"
                        break
                        ;;
                    "Wireshark")
                        # Install Wireshark
                        sudo apt install wireshark -y
                        echo -e "${GREEN}Wireshark installed successfully!${RESET}"
                        break
                        ;;
                    "Burp Suite")
                        # Download Burp Suite
                        wget https://portswigger.net/burp/releases/download?product=community&version=2023.4.1&architecture=linux -O burp-suite.sh
                        sudo bash burp-suite.sh
                        echo -e "${GREEN}Burp Suite downloaded and installed successfully!${RESET}"
                        break
                        ;;
                    "OWASP ZAP")
                        # Install OWASP ZAP
                        sudo apt install zaproxy -y
                        echo -e "${GREEN}OWASP ZAP installed successfully!${RESET}"
                        break
                        ;;
                    "Back to Main Menu")
                        break
                        ;;
                    *)
                        echo -e "${RED}Invalid selection!${RESET}"
                        break
                        ;;
                esac
            done
            ;;
        "DDoS Tools")
            # Display DDoS Tools
            PS3='Please select a DDoS tool: '
            ddos_tools=(
                "LOIC"
                "HOIC"
                "Slowloris"
                "RUDY"
                "XERXES"
                "Back to Main Menu"
            )
            select tool in "${ddos_tools[@]}"; do
                case "$tool" in
                    "LOIC")
                        # Install LOIC
                        sudo apt install loic -y
                        echo -e "${GREEN}LOIC installed successfully!${RESET}"
                        break
                        ;;
                    "HOIC")
                        # Install HOIC
                        sudo apt install hoic -y
                        echo -e "${GREEN}HOIC installed successfully!${RESET}"
                        break
                        ;;
                    "Slowloris")
                        # Install Slowloris
                        sudo apt install slowloris -y
                        echo -e "${GREEN}Slowloris installed successfully!${RESET}"
                        break
                        ;;
                    "RUDY")
                        # Install RUDY
                        sudo apt install rudy -y
                        echo -e "${GREEN}RUDY installed successfully!${RESET}"
                        break
                        ;;
                    "XERXES")
                        # Install XERXES
                        sudo apt install xerxes -y
                        echo -e "${GREEN}XERXES installed successfully!${RESET}"
                        break
                        ;;
                    "Back to Main Menu")
                        break
                        ;;
                    *)
                        echo -e "${RED}Invalid selection!${RESET}"
                        break
                        ;;
                esac
            done
            ;;
        "Phishing Tools")
            # Display Phishing Tools
            PS3='Please select a Phishing tool: '
            phishing_tools=(
                "SocialFish"
                "PhisherMan"
                "ZPhisher"
                "Weevely"
                "EvilGinx2"
                "Back to Main Menu"
            )
            select tool in "${phishing_tools[@]}"; do
                case "$tool" in
                    "SocialFish")
                        # Install SocialFish
                        sudo apt install socialfish -y
                        echo -e "${GREEN}SocialFish installed successfully!${RESET}"
                        break
                        ;;
                    "PhisherMan")
                        # Install PhisherMan
                        sudo apt install phisherman -y
                        echo -e "${GREEN}PhisherMan installed successfully!${RESET}"
                        break
                        ;;
                    "ZPhisher")
                        # Install ZPhisher
                        sudo apt install zphisher -y
                        echo -e "${GREEN}ZPhisher installed successfully!${RESET}"
                        break
                        ;;
                    "Weevely")
                        # Install Weevely
                        sudo apt install weevely -y
                        echo -e "${GREEN}Weevely installed successfully!${RESET}"
                        break
                        ;;
                    "EvilGinx2")
                        # Install EvilGinx2
                        sudo apt install evilginx2 -y
                        echo -e "${GREEN}EvilGinx2 installed successfully!${RESET}"
                        break
                        ;;
                    "Back to Main Menu")
                        break
                        ;;
                    *)
                        echo -e "${RED}Invalid selection!${RESET}"
                        break
                        ;;
                esac
            done
            ;;
        "Exit")
            echo -e "${MAGENTA}Exiting DogeSploit...${RESET}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid selection!${RESET}"
            break
            ;;
    esac
done

