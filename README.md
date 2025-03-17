# AutoBuild-lede
云编译Lede-OpenWrt


打开“xxx.config”文件

如果不编译某个插件：
写入例如：# CONFIG_PACKAGE_luci-app-dockerman is not set

如果编译某个插件：
写入例如：CONFIG_PACKAGE_luci-app-dockerman=y
