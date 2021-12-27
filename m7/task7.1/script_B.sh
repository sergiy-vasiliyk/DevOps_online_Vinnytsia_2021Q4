#! /bin/bash
echo -e "\033[32m1.From which ip where the most requests? \033[33m"
echo -e "\033[33mThe most requests from ip: \033[33m"
awk '{print $1}' apache_logs.txt | sort | uniq -c | sort -nr | head -n 1  

echo -e "\033[32m2.What is the most requested page? \033[33m"
echo -e "\033[33mThe most requested page \033[33m"
awk '{print $7}' apache_logs.txt | sort | uniq -c | sort -nr | head -n 1

echo -e "\033[32m3.How many requests were from each ip? \033[33m"
echo -e "\033[33mAmount requests from ip: \033[33m"
awk '{print$2"requests from "$1}' apache_logs.txt | sort | uniq -c | sort -nr 


echo -e "\033[32m4.What non-existen pages were clients referred to? \033[33m"
echo -e "\033[33mNon-existen pages were clients referref to: \033[33m"
awk '{print $7,$9}' apache_logs.txt | grep 404 | sort | uniq -c | awk '{print $2}'

echo -e "\033[32m5.What time did site get the most requests? \033[33m"
echo -e "\033[33mSite get the most requests at: \033[33m"
awk '{print $4}' apache_logs.txt | sort | uniq -c | sort -gr | head -n 15 

echo -e "\033[32m6.What search bots have accessed the site? (UA + IP) \033[33m"
echo -e "\033[33mThe search bots accessed to the site: \033[33m"
awk -F: '{print $1 $5}' apache_logs.txt | grep -P "bot" | grep -v "robots" | sort | uniq -c
echo
