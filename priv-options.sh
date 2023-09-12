#echo -e "\e[1;31m
echo "---------------------------------------------------------------------------------------------------------------------------"
echo "|                                                                                                                         |"
echo "|                                                                                                                         |"
echo "|          FIND THE MAJOR POASSIABLE PRIVILEGE ESCALATION METHOD                                                          |" 
echo "|                                                              --(created by)                                             |"
echo -e "\e[1;31m|                                                                             --(💔missyou -nanthu(❤)                     |\e[0m "
echo "---------------------------------------------------------------------------------------------------------------------------"
#/e[0m




echo -e "\e[1;32m [1]   kernal version's  \e[0m"
echo -e "\e[1;32m [2]   find sudo -l permission's\e[0m"
echo -e "\e[1;32m [3]   Suid $ Guid \e[0m"
echo -e "\e[1;32m [4]   find Capabilities \e[0m"
echo -e "\e[1;32m [5]   cronjob's\e[0m"
echo -e "\e[1;32m [6]   find the possiable PATH\e[0m"
echo -e "\e[1;32m [7]   NFS Share's \e[0m"
echo -e "\e[1;32m [8]   find passwd $ shadow file (read and write) permission's\e[0m"
echo -e "\e[1;32m [8a]  View Passwd File (user-list) \e[0m"
echo -e "\e[1;32m [8b]  View Shadow file (read and write perissions checking)   \e[0m"
echo ""
echo " Plesae Enter Your Option's"
echo ""


read options

if [ "$options" = 1 ];
then
echo -e "\e[1;33m [1]   kernal version's  \e[0m" & uname -r
#else
#echo -e "\e[1;31m Option's invalied \e[0m" 
fi

if [ "$options" = 2 ];
then
echo -e "\e[1;33m [2]   find sudo -l permission's   \e[0m" & sudo -l
#else
#echo -e "\e[1;31m Option's invalied \e[0m" 
fi

if [ "$options" = 3 ];
then
echo -e "\e[1;33m [3]  Suid $ Guid \e[0m" &  find / -type f -perm -u=s -ls 2>/dev/null 
#else
#echo -e "\e[1;31m Option's invalied \e[0m" 
fi

if [ "$options" = 4 ];
then
echo -e "\e[1;33m [4]   find Capabilities  \e[0m" &  getcap -r / 2>/dev/null 
#else
#echo -e "\e[1;31m Option's invalied \e[0m" 
fi

if [ "$options" = 5 ];
then
echo -e "\e[1;33m [5]   find cronjob's  \e[0m" &  crontab -l
#else
#echo -e "\e[1;31m Option's invalied \e[0m" 
fi

if [ "$options" = 6 ];
then
echo -e "\e[1;33m [6]   find PATH  \e[0m" &  find / -writable 2>/dev/null | cut -d "/" -f 2,3 | grep -v proc | sort -u 
#else
#echo -e "\e[1;31m Option's invalied \e[0m" 
fi

if [ "$options" = 7 ];
then
echo -e "\e[1;33m [6]   NFS share's  \e[0m" & /etc/exports 
#else
#echo -e "\e[1;31m Option's invalied \e[0m" 
fi

if [ "$options" = 8 ];
then
echo ""
echo -e "\e[1;33m [8] find passwd $ shadow file (read and write) permission's  \e[0m" &   ls -l /etc/passwd ; ls -l /etc/shadow
#else
#echo -e "\e[1;31m Option's invalied \e[0m" 
fi

if [ "$options" = 8a ];
then
echo ""
echo -e "\e[1;33m [8a] View The Passwd File \e[0m" & cat /etc/passwd
#else
#echo -e "\e[1;31m Option's invalied \e[0m" 
fi

if [ "$options" = 8b ];
then
echo ""
echo -e "\e[1;33m [8b] View  The shadow File  \e[0m" & cat /etc/shadow & ls -l /etc/shadow 
fi

#echo -e  "\e[1;35m Plese Enter The Target [ip] For Scaning's \e[0m"
#read iptarget

#if [[ $iptarget =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
 # echo "Valid IP Address"
#else
 # echo "Invalid IP Address. Quitting..."
  #

echo " "
echo ""

echo  -e "\e[1;36m  Thankyou for using this Tool (#$%^&*):-\e[0m"
echo ""
 