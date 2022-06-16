#!/bin/bash
#####	一键安装Caddy + Aria2 + AriaNg		#####
#####	作者：xiaoz.me						#####
#####	更新时间：2018-09-28				#####

#导入环境变量
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin:/sbin
export PATH

function up_tracker(){
	#下载最新的bt-tracker
	#udp://tracker.opentrackr.org:1337/announce,udp://open.tracker.cl:1337/announce,udp://9.rarbg.com:2810/announce,udp://tracker.openbittorrent.com:6969/announce,udp://opentracker.i2p.rocks:6969/announce,https://opentracker.i2p.rocks:443/announce,http://tracker.openbittorrent.com:80/announce,udp://www.torrent.eu.org:451/announce,udp://tracker.torrent.eu.org:451/announce,udp://open.stealth.si:80/announce,udp://tracker.tiny-vps.com:6969/announce,udp://ipv4.tracker.harry.lu:80/announce,udp://exodus.desync.com:6969/announce,udp://tracker1.bt.moack.co.kr:80/announce,udp://tracker.zerobytes.xyz:1337/announce,udp://tracker.theoks.net:6969/announce,udp://tracker.publictracker.xyz:6969/announce,udp://tracker.pomf.se:80/announce,udp://tracker.monitorit4.me:6969/announce,udp://tracker.moeking.me:6969/announce
	wget -O /tmp/trackers_best.txt https://api.xiaoz.org/trackerslist/
	tracker=$(cat /tmp/trackers_best.txt)
	#替换处理bt-tracker
	tracker="bt-tracker="${tracker}
	#更新aria2配置
	sed -i '/bt-tracker.*/'d /etc/ccaa/aria2.conf
	echo ${tracker} >> /etc/ccaa/aria2.conf
	echo '-------------------------------------'
	echo 'bt-tracker update completed.'
	echo '-------------------------------------'
}

up_tracker

#重启服务
/usr/sbin/ccaa restart
