#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by Afiniel for crypto use...
#####################################################

source /etc/functions.sh

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "Afiniel Yiimpool Installer v4.0" --menu "Choose one" -1 60 16 \
' ' "- choose one -" \
1 "YiiMP Install" \
' ' "- Compile Coin daemon -" \
2 "DaemonBuilder" \
3 "Exit Installation" \
' '  "- YIIMP multi pool , yiimp upgrade and Nomp installer Work Inprogress -" \
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
source bootstrap_coin.sh;
fi

if [ $RESULT = 3 ] # This one will be YIIMP upgrade later..
then
clear;
exit;
fi

if [ $RESULT = 4 ] # This one will be NOMP install later..
then
clear;
exit;
fi

if [ $RESULT = 5 ] # This will be YIIMP Multiserver later
then
clear;
exit;
fi

if [ $RESULT = 6 ]
then
clear;
exit;
fi
