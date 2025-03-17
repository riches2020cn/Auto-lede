# AutoBuild-lede
云编译Lede-OpenWrt


1. 打开“xxx.config”文件：

   编译某个插件，
   例如：CONFIG_PACKAGE_luci-app-dockerman=y

   不编译某个插件，
   例如：# CONFIG_PACKAGE_luci-app-dockerman is not set

2. 若要使用自带的“luci-theme-argon”皮肤，在“xxx.config”文件中，添加：CONFIG_PACKAGE_luci-theme-argon=y

3. 若要使用“jerrykuku/luci-theme-argon/”皮肤，在“xxx.config”文件中，添加：CONFIG_PACKAGE_luci-theme-argon=y
   然后在所有的“Build_xxx.yml”脚本中恢复注释掉的代码
