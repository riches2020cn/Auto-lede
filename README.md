# AutoBuild-lede
云编译Lede-OpenWrt


1. 编译某个插件，在“xxx.config”文件添加
   
   例如：CONFIG_PACKAGE_luci-app-dockerman=y

2. 取消编译某个插件，在“xxx.config”文件添加
   
   例如：# CONFIG_PACKAGE_luci-app-dockerman is not set

3. 若要使用自带的“luci-theme-argon”皮肤，在“xxx.config”文件添加
   
   CONFIG_PACKAGE_luci-theme-argon=y

   编译为默认皮肤：在“customize_x86.sh”和“customize.sh”中恢复注释掉的“修改默认皮肤”

5. 若要使用“jerrykuku/luci-theme-argon/”皮肤，在“xxx.config”文件添加

   CONFIG_PACKAGE_luci-theme-argon=y
   
   然后在所有的“Build_xxx.yml”脚本中恢复注释掉的“luci-theme-argon”代码

   编译为默认皮肤：在“customize_x86.sh”和“customize.sh”中恢复注释掉的“修改默认皮肤”

6. 编译完成后，请检查 Github 输出的编译过程，细察是否出错，尤其注意“Initialization environment”安装依赖包部分

   jobs:
  build:
    runs-on: ubuntu-22.04

   - name: Before freeing up disk space
   - name: "Optimize Disk Space"
   - name: Freeing up disk space
     
   - name: Free up disk space complete
       - name: Checkout
      uses: actions/checkout@master（注意：原文末尾是“@main”，根据自己来定义）

   - name: Initialization environment
   - name: Check Space
     
   上面八大部分参考：https://github.com/dzlea/ActionsBuildOpenWRT/tree/main/.github/workflows

   余下部分参考：https://github.com/esirplayground/AutoBuild-OpenWrt

   在此感谢两位原作者的付出！

   

