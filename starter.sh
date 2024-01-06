RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "proxy" ]; then
    echo -e "${RED}Deleting Old Proxy...${ENDCOLOR}"
    rm proxy
    sleep 1
    echo -e "${GREEN}Updating Proxy...${ENDCOLOR}"
fi
echo -e "${GREEN}Checking Termux Packages..."
pkg update -y
pkg upgrade -y
pkg install openssl -y
pkg install curl -y
pkg install libenet -y
pkg install wget -y
clear
wget -q https://github.com/JanuppiXDei/Proxy/raw/main/proxy
sleep 1
echo -e "${GREEN}Proxy Installation: Done!${ENDCOLOR}"
echo -e "${GREEN}Execute proxy with this command: ./proxy${ENDCOLOR}"
chmod +x proxy
