#!/bin/bash
#=================================================
# Copyright (c) 2019-2023 sky2016cn
# Author: sky2016cn
# licensed under the MIT License
# See /LICENSE for more information
# Description: Build OpenWrt using GitHub Actions
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.9.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#VPS固件的网络配置
sed -i 's/option ifname.*/option ifname   '\''eth0'\''/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/option proto.*/option proto    '\''static'\''/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/option ipaddr.*/option ipaddr   '\''156.245.25.36'\''/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/option gateway.*/option gateway  '\''10.4.210.1'\''/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/option netmask.*/option netmask  '\''255.255.255.0'\''/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/list dns.*/list dns        '\''8.8.8.8'\''/g' openwrt/package/base-files/files/bin/config_generate

#VPS固件的防火墙设置
sed -i '/config zone/{/option name\s*wan/{N;s/option input\s*REJECT/option input ACCEPT/;s/option forward\s*REJECT/option forward ACCEPT/;a\
        option mtu_fix 1\
        option masq 1\
        list network "wan6"\
}}' openwrt/package/network/config/firewall/files/firewall.config

#3. 修改默认皮肤
sed -i 's/+luci-theme-bootstrap/+luci-theme-argon/g' openwrt/feeds/luci/collections/luci/Makefile

#4. 修改 x86 内核版本
#sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.15/g' openwrt/target/linux/x86/Makefile

#5. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

