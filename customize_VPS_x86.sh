#!/bin/bash
#=================================================
# Copyright (c) 2019-2023 sky2016cn
# Author: sky2016cn
# licensed under the MIT License
# See /LICENSE for more information
# Description: Build OpenWrt using GitHub Actions
#=================================================

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. 修改默认皮肤
sed -i 's/+luci-theme-bootstrap/+luci-theme-argon/g' openwrt/feeds/luci/collections/luci/Makefile

#4. 修改 x86 内核版本
#sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.15/g' openwrt/target/linux/x86/Makefile

#5. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

