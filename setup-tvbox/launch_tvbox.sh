#!/bin/bash
# 必须指定显示和DBUS地址
export DISPLAY=:0
export WAYLAND_DISPLAY=wayland-0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$UID/bus

# 启动应用
#/usr/bin/waydroid session stop
#sleep 1
/usr/bin/waydroid app launch com.github.tvbox.osc
