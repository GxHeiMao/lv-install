#!/bin/bash
echo "Lv:1.8"
echo " 1.全部安装(推荐"只有"一台服务器情况下)"
echo " 2.安装服务器(推荐安装在"国内"服务器[中转机])"
echo " 3.安装客户端(推荐安装在"国外"服务器)"
echo " 4.卸载服务端"
echo " 5.卸载客户端"
echo " 6.全卸载"
echo " 0.退出"

read -p " 请输入选项:" action
case $action in
1)
wget https://github.com/GxHeiMao/lv-install/archive/refs/heads/main.zip
unzip main.zip
cd lv-install-main && unzip -d service service.zip && cd service && chmod 777 nps &&  ./nps install && nps start
cd ../../lv-install-main && unzip -d client client.zip && cd client && chmod 777 npc && ./npc install
cd ../../ && rm -rf main.zip && rm -rf lv-install-main
;;
2)
wget https://github.com/GxHeiMao/lv-install/archive/refs/heads/main.zip
unzip main.zip
cd lv-install-main && unzip -d service service.zip && cd service && chmod 777 nps &&  ./nps install && nps start
cd ../../ && rm -rf main.zip && rm -rf lv-install-main
;;
3)
read -p " 请输入客户端绑定命令:" m
wget https://github.com/GxHeiMao/lv-install/archive/refs/heads/main.zip
unzip main.zip
cd lv-install-main && unzip -d client client.zip && cd client && chmod 777 npc && ./npc install $m && npc start
cd ../../ && rm -rf main.zip && rm -rf lv-install-main
;;
4)
nps stop
nps uninstall
;;
5)
npc stop
npc uninstall
;;
6)
nps stop
nps uninstall
npc stop
npc uninstall
;;
0)
echo "Bye!"
exit 0
;;
*)
echo "Bye!"
exit 0
;;
esac