#!/bin/bash
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# 等待WiFi完全启动
while ! nmcli -t -f GENERAL.STATE dev show wlp0s20f3 | grep -q '100'; do
    sleep 2
done

# 检查组播支持
#if ! iw dev wlp0s20f3 info | grep -q "multicast"; then
#    iw dev wlp0s20f3 set multicast on
#fi

# 启动udpxy
/usr/local/bin/udpxy -p 4022 -a 0.0.0.0 -m wlp0s20f3 -S -M 60 -B 2M -c 5
