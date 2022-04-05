#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by Afiniel for crypto use...
#####################################################

source /etc/functions.sh

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "Afiniel Yiimpool Setup Installer v3.35" --menu "Choose one" -1 60 16 \
' ' "- YiiMP Server Install -" \
1 "YiiMP Single Server" \
2 "YiiMP Multi Server" \
' ' "- YiiMP Upgrade -" \
3 "YiiMP Stratum Upgrade" \
' '  "- NOMP Server Install -" \
4 "NOMP Server Comming Soon" \
' ' "- Daemon Wallet Builder -" \
5 "Daemonbuilder" \
6 Exit)
if [ $RESULT = ]
then
bash $(basename $0) && exit;
fi


if [ $RESULT = 1 ]
then
clear;
cd $HOME/yiimpool/install
source bootstrap_single.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/yiimpool/install
source bootstrap_multi.sh;
fi

if [ $RESULT = 3 ]
then
clear;
cd $HOME/yiimpool/install
source bootstrap_upgrade.sh;
fi

if [ $RESULT = 4 ]
then
clear;
cd $HOME/yiimpool/install
exit 0;
fi

if [ $RESULT = 5 ]
then
clear;
cd $HOME/yiimpool/install
source bootstrap_coin.sh;
fi

if [ $RESULT = 6 ]
then
clear;
exit;
fi
