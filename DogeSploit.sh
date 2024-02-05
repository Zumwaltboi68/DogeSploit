#!/bin/bash

# DogeSploit v1.1
# A hacking toolbox for educational purposes only.

# Banner
clear
echo "        __            _ __  __     __  __"
echo "  __   / /____ _____/ |\ \/ /__ / /_/ /_  _____"
echo " / /__/ __/ _ `/ __/ __/ / / -_) __/ __/ / ___/"
echo " \____/\__/ \_,_/\__/_/\_\__/\__/\__/ \__/  "

# Main menu
while true; do
    echo ""
    echo "[1] Cracking Tools"
    echo "[2] RAT Tools"
    echo "[3] Pen Test Tools"
    echo "[4] DDoS Tools"
    echo "[5] Phishing Tools"
    echo "[6] Install All Programs"
    echo "[7] Exit"
    echo ""
    read -p "Select a category: " choice

    # Handle user input
    case $choice in
    1)
        # Cracking Tools
        echo ""
        echo "[1] Hashcat"
        echo "[2] John the Ripper"
        echo "[3] Medusa"
        echo "[4] THC Hydra"
        echo "[5] Aircrack-ng"
        echo "[6] Back to Main Menu"
        echo ""
        read -p "Select a tool: " tool

        # Handle tool selection
        case $tool in
        1)
            # Hashcat
            echo ""
            echo "Installing Hashcat..."
            sudo apt-get install hashcat
            ;;
        2)
            # John the Ripper
            echo ""
            echo "Installing John the Ripper..."
            sudo apt-get install john
            ;;
        3)
            # Medusa
            echo ""
            echo "Installing Medusa..."
            sudo apt-get install medusa
            ;;
        4)
            # THC Hydra
            echo ""
            echo "Installing THC Hydra..."
            sudo apt-get install hydra
            ;;
        5)
            # Aircrack-ng
            echo ""
            echo "Installing Aircrack-ng..."
            sudo apt-get install aircrack-ng
            ;;
        6)
            # Back to Main Menu
            continue
            ;;
        *)
            # Invalid selection
            echo ""
            echo "Invalid selection. Please choose a valid tool."
            ;;
        esac
        ;;
    2)
        # RAT Tools
        echo ""
        echo "[1] Metasploit Framework"
        echo "[2] Covenant"
        echo "[3] Empire"
        echo "[4] NanoCore"
        echo "[5] Quasar RAT"
        echo "[6] Back to Main Menu"
        echo ""
        read -p "Select a tool: " tool

        # Handle tool selection
        case $tool in
        1)
            # Metasploit Framework
            echo ""
            echo "Installing Metasploit Framework..."
            sudo apt-get install metasploit-framework
            ;;
        2)
            # Covenant
            echo ""
            echo "Installing Covenant..."
            sudo apt-get install covenant
            ;;
        3)
            # Empire
            echo ""
            echo "Installing Empire..."
            sudo apt-get install empire
            ;;
        4)
            # NanoCore
            echo ""
            echo "Installing NanoCore..."
            sudo apt-get install nanocore
            ;;
        5)
            # Quasar RAT
            echo ""
            echo "Installing Quasar RAT..."
            sudo apt-get install qsrat
            ;;
        6)
            # Back to Main Menu
            continue
            ;;
        *)
            # Invalid selection
            echo ""
            echo "Invalid selection. Please choose a valid tool."
            ;;
        esac
        ;;
    3)
        # Pen Test Tools
        echo ""
        echo "[1] Nmap"
        echo "[2] Wireshark"
        echo "[3] Burp Suite"
        echo "[4] Nessus"
        echo "[5] Acunetix"
        echo "[6] Back to Main Menu"
        echo ""
        read -p "Select a tool: " tool

        # Handle tool selection
        case $tool in
        1)
            # Nmap
            echo ""
            echo "Installing Nmap..."
            sudo apt-get install nmap
            ;;
        2)
            # Wireshark
            echo ""
            echo "Installing Wireshark..."
            sudo apt-get install wireshark
            ;;
        3)
            # Burp Suite
            echo ""
            echo "Installing Burp Suite..."
            sudo apt-get install burpsuite
            ;;
        4)
            # Nessus
            echo ""
            echo "Installing Nessus..."
            sudo apt-get install nessus
            ;;
        5)
            # Acunetix
            echo ""
            echo "Installing Acunetix..."
            sudo apt-get install acunetix
            ;;
        6)
            # Back to Main Menu
            continue
            ;;
        *)
            # Invalid selection
            echo ""
            echo "Invalid selection. Please choose a valid tool."
            ;;
        esac
        ;;
    4)
        # DDoS Tools
        echo ""
        echo "[1] LOIC"
        echo "[2] HOIC"
        echo "[3] Slowloris"
        echo "[4] RUDY"
        echo "[5] Xerxes"
        echo "[6] Back to Main Menu"
        echo ""
        read -p "Select a tool: " tool

        # Handle tool selection
        case $tool in
        1)
            # LOIC
            echo ""
            echo "Installing LOIC..."
            sudo apt-get install loic
            ;;
        2)
            # HOIC
            echo ""
            echo "Installing HOIC..."
            sudo apt-get install hoic
            ;;
        3)
            # Slowloris
            echo ""
            echo "Installing Slowloris..."
            sudo apt-get install slowloris
            ;;
        4)
            # RUDY
            echo ""
            echo "Installing RUDY..."
            sudo apt-get install rudy
            ;;
        5)
            # Xerxes
            echo ""
            echo "Installing Xerxes..."
            sudo apt-get install xerxes
            ;;
        6)
            # Back to Main Menu
            continue
            ;;
        *)
            # Invalid selection
            echo ""
            echo "Invalid selection. Please choose a valid tool."
            ;;
        esac
        ;;
    5)
        # Phishing Tools
        echo ""
        echo "[1] Phishing Email Generator"
        echo "[2] Social Engineering Toolkit (SET)"
        echo "[3] Maltego"
        echo "[4] Recon-ng"
        echo "[5] PhishTank"
        echo "[6] Back to Main Menu"
        echo ""
        read -p "Select a tool: " tool

        # Handle tool selection
        case $tool in
        1)
            # Phishing Email Generator
            echo ""
            echo "Installing Phishing Email Generator..."
            sudo apt-get install phishing_email_generator
            ;;
        2)
            # Social Engineering Toolkit (SET)
            echo ""
            echo "Installing Social Engineering Toolkit (SET)..."
            sudo apt-get install set
            ;;
        3)
            # Maltego
            echo ""
            echo "Installing Maltego..."
            sudo apt-get install maltego
            ;;
        4)
            # Recon-ng
            echo ""
            echo "Installing Recon-ng..."
            sudo apt-get install recon-ng
            ;;
        5)
            # PhishTank
            echo ""
            echo "Installing PhishTank..."
            sudo apt-get install phishtank
            ;;
        6)
            # Back to Main Menu
            continue
            ;;
        *)
            # Invalid selection
            echo ""
            echo "Invalid selection. Please choose a valid tool."
            ;;
        esac
        ;;
    6)
        # Install All Programs
        echo ""
        echo "Installing all programs..."
        sudo apt-get update && sudo apt-get install hashcat john medusa hydra aircrack-ng metasploit-framework covenant empire nanocore qsrat nmap wireshark burpsuite nessus acunetix loic hoic slowloris rudy xerxes phishing_email_generator set maltego recon-ng phishtank
        echo ""
        echo "All programs installed successfully."
        ;;
    7)
        # Exit
        echo ""
        echo "Exiting DogeSploit..."
        exit 0
        ;;
    *)
        # Invalid selection
        echo ""
        echo "Invalid selection. Please choose a valid category."
        ;;
    esac
done
