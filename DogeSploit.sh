#!/bin/bash

# Define colors
GREEN="\033[38;5;82m"
RED="\033[38;5;196m"
YELLOW="\033[38;5;226m"

# Print the DogeSploit banner
echo -e "${YELLOW} DogeSploit v8.0 ${GREEN}"
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
    "Crunch"
    "Cupp"
    "RockYou"
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
    "Wordlist generator"
    "Password list generator"
    "Common password list"
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
    "apt-get install crunch"
    "apt-get install cupp"
    "wget https://github.com/danielmiessler/SecLists/archive/master.zip; unzip master.zip; mv SecLists-master RockYou"
)

# Define an array of additional features
features=(
    "Tool updates"
    "Tool卸载程序"
    "Custom tool installation"
    "Tool search"
    "Tool ratings"
    "Tool reviews"
    "漏洞搜索"
    "漏洞利用"
    "Web渗透测试"
    "网络扫描"
    "密码破解"
)

# Define an array of additional feature descriptions
descriptions=(
    "Automatically checks for and installs updates to the installed tools."
    "Uninstall the installed tools."
    "Allows the user to install custom tools that are not included in the pre-defined list of tools."
    "Allows the user to search for and install specific tools."
    "Allows the user to rate the tools, so that other users can see which tools are the most popular."
    "Allows the user to write reviews of the tools, so that other users can read about their experiences with the tools."
    "Search for vulnerabilities."
    "Exploit vulnerabilities."
    "Perform web penetration testing."
    "Perform network scanning."
    "Perform password cracking."
)

# Define an array of additional feature installation commands
commands=(
    "apt-get install unattended-upgrades"
    "apt-get install autoremove"
    "apt-get install aptitude"
    "apt-get install synaptic"
    "apt-get install software-properties-common"
    "apt-get install curl"
    "apt-get install wget"
    "apt-get install git"
    "apt-get install build-essential"
    "apt-get install python3-pip"
    "apt-get install docker"
)

# Print the menu of tools and additional features
PS3='Enter your choice: '
select tool_or_feature in "Install All Tools" "${tools[@]}" "Additional Features" "${features[@]}" "Exit"; do
    case $tool_or_feature in
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
        "Additional Features")
            select feature in "${features[@]}"; do
                case $feature in
                    "${features[@]}")
                        index=$(($REPLY - 1))
                        eval ${commands[$index]}
                        echo -e "${GREEN}${features[$index]} installed successfully.${YELLOW}"
                        break
                        ;;
                    *)
                        echo -e "${RED}Invalid choice.${YELLOW}"
                        ;;
                esac
            done
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
