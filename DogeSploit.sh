#!/bin/bash

# Define colors
GREEN="\033[38;5;82m"
RED="\033[38;5;196m"
YELLOW="\033[38;5;226m"

# Print the DogeSploit banner
echo -e "${YELLOW} DogeSploit v4.0 ${GREEN}"
echo -e "${YELLOW}  .-.    .-. .-.\\ ${GREEN}"
echo -e "${YELLOW} /:;;.\  /:::::/ ${GREEN}"
echo -e "${YELLOW}||:::/  |::::::/  ${GREEN}"
echo -e "${YELLOW}||:::/   |:::::/   ${GREEN}"
echo -e "${YELLOW} `--`     `--`     ${GREEN}"

# Define an array of tools
tools=(
    "Nmap"
    "Wireshark"
    "Metasploit"
    "John the Ripper"
    "Aircrack-ng"
    "Maltego"
    "Social Engineering Toolkit (SET)"
    "Exploit Database (EDB)"
    "Vulners"
    "Nessus"
    "OpenVAS"
    "OWASP ZAP"
    "Kali Linux"
    "Parrot OS"
    "Hashcat"
    "Medusa"
    "Hydra"
    "Burp Suite"
)

# Define an array of tool descriptions
descriptions=(
    "Network scanner"
    "Network protocol analyzer"
    "Penetration testing framework"
    "Password cracker"
    "Wireless network auditing and cracking tool"
    "Open source intelligence (OSINT) tool"
    "Social engineering toolkit"
    "Database of exploits"
    "Vulnerability scanner"
    "Vulnerability assessment and management tool"
    "Open source vulnerability scanner"
    "Web application security scanner"
    "Linux distribution for penetration testing"
    "Linux distribution for security and privacy"
    "Advanced password cracker"
    "Remote access password cracker"
    "Network login cracker"
    "Web application security scanner"
)

# Define an array of tool installation commands
commands=(
    "apt-get install nmap"
    "apt-get install wireshark"
    "apt-get install metasploit-framework"
    "apt-get install john"
    "apt-get install aircrack-ng"
    "apt-get install maltego"
    "apt-get install setoolkit"
    "apt-get install exploitdb"
    "apt-get install vulners"
    "apt-get install nessus"
    "apt-get install openvas"
    "apt-get install owasp-zap"
    "echo -e \"Installing Kali Linux. This may take some time.\"; wget https://cdimage.kali.org/kali-2023.3/kali-linux-2023.3-installer-amd64.iso; sudo dd bs=4M if=kali-linux-2023.3-installer-amd64.iso of=/dev/sdb; sudo reboot"
    "echo -e \"Installing Parrot OS. This may take some time.\"; wget https://dl.parrotsec.org/iso/parrot-sec-5.3.0-amd64.iso; sudo dd bs=4M if=parrot-sec-5.3.0-amd64.iso of=/dev/sdb; sudo reboot"
    "apt-get install hashcat"
    "apt-get install medusa"
    "apt-get install hydra"
    "apt-get install burp-suite"
)

# Print the menu of tools
PS3='Enter your choice: '
select tool in "Install All Tools" "${tools[@]}" "Exit"; do
    case $tool in
        "Install All Tools")
            for command in "${commands[@]}"; do
                eval $command
            done
            echo -e "${GREEN}All tools installed successfully.${YELLOW}"
            break
            ;;
        "${tools[@]}")
            index=$(($REPLY - 2))
            eval ${commands[$index]}
            echo -e "${GREEN}${tools[$index]} installed successfully.${YELLOW}"
            break
            ;;
        "Exit")
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid choice.${YELLOW}"
            ;;
    esac
done

# Exit the script
exit 0
