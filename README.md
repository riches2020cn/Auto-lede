# AutoBuild-lede
云编译Lede-OpenWrt


1. 编译某个插件，添加到“xxx.config”文件
   例如：CONFIG_PACKAGE_luci-app-dockerman=y

2. 不编译某个插件，添加到“xxx.config”文件
   例如：# CONFIG_PACKAGE_luci-app-dockerman is not set

2. 若要使用自带的“luci-theme-argon”皮肤，添加到“xxx.config”文件
   例如：CONFIG_PACKAGE_luci-theme-argon=y

4. 若要使用“jerrykuku/luci-theme-argon/”皮肤，添加到“xxx.config”文件
   例如：CONFIG_PACKAGE_luci-theme-argon=y
   然后在所有的“Build_xxx.yml”脚本中恢复注释掉的代码
