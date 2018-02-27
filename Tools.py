#!/usr/bin/python3

import os
import time

from termcolor import *

os.system('reset')
print (colored('##################################################\n制作者：极客之眼团队_{"text":"json"}\n极客之眼团队群号：659155551\n本工具只适用与kali linux中\n如有错误请联系QQ：1945649519\n最近的一次更新时间：2018/2/27 13:45\n###########最后祝您使用愉快#######################',"green"))
XX= input(colored('请写出您要执行的命令:',"yellow"))
if XX == "help":
    print ("         install 安装程序")
    print ("          exit 退出")
    XX= input(colored('请写出您要执行的命令:',"yellow"))
if XX == "exit":
    exit()
if XX == "install":
    print (colored('输入help以查询支持安装的软件',"yellow"))
    AZXX = input(colored('请写出您要安装的程序：',"yellow"))
if AZXX == "help":
    print (colored('可安装的软件列表:',"blue"))
    print (colored('          名称          支持状态',"blue"))
    print (colored('          网易云音乐          未知',"blue"))
    print (colored('          输入法/PINYIN          OK',"blue"))
    print (colored('          补全系统          ok',"blue"))
    AZXX = input(colored('请写出您要安装的程序：',"yellow"))
if AZXX ==  "网易云音乐":
    os.system('wget -o music.deb http://d1.music.126.net/dmusic/netease-cloud-music_1.1.0_amd64_ubuntu.deb')
    os.system('dpkg -i music.deb')
    os.system('apt-get -y install -f')
    print (colored("操作完成，3秒后重启脚本","blue"))
    time.sleep(3)
    os.system('python3 Tools.py')
if AZXX == "输入法":
    os.system('apt-get -y install fcitx-googlepinyin')
    os.system('reset')
    print (colored("操作完成，3秒后重启脚本","blue"))
    time.sleep(3)
    os.system('python3 Tools.py')
if AZXX == "PINYIN":
    os.system('apt-get -y install fcitx-googlepinyin')
    os.system('reset')
    print (colored("操作完成，3秒后重启脚本","blue"))
    time.sleep(3)
    os.system('python3 Tools.py')
if AZXX == "补全系统":
    os.system('apt-get -y install kali-linux-all')
    print (colored("操作完成，3秒后重启脚本","blue"))
    time.sleep(3)
    os.system('python3 Tools.py')
