# AutoBuild-lede  
云编译 Lede-OpenWrt

---

## 插件配置说明

### ✅ 1. 编译某个插件  
在 `xxx.config` 文件中添加：  
```bash
CONFIG_PACKAGE_luci-app-dockerman=y
```

### 🚫 2. 取消编译某个插件  
在 `xxx.config` 文件中添加：  
```bash
# CONFIG_PACKAGE_luci-app-dockerman is not set
```

---

## 主题皮肤设置

### 🎨 3. 使用 Lean 的 luci-theme-argon  
在 `xxx.config` 文件中添加：  
```bash
CONFIG_PACKAGE_luci-theme-argon=y
```

如需设为默认皮肤：  
请在 `customize_x86.sh` 和 `customize.sh` 中恢复注释掉的“修改默认皮肤”代码。

---

### 🎨 4. 使用 jerrykuku/luci-theme-argon  
在 `xxx.config` 文件中添加：  
```bash
CONFIG_PACKAGE_luci-theme-argon=y
```

然后在所有 `Build_xxx.yml` 脚本中恢复注释掉的 `luci-theme-argon` 相关代码。

如需设为默认皮肤：  
同样请在 `customize_x86.sh` 和 `customize.sh` 中恢复注释掉的“修改默认皮肤”代码。

---

## 编译注意事项

### ⚠️ 5. 检查编译是否出错  
特别注意 `Initialization environment` 阶段安装依赖包部分，请展开日志仔细检查是否出错。

下方 `Build_xxx.yml` 脚本的八大部分参考：  
🔗 https://github.com/dzlea/ActionsBuildOpenWRT/tree/main/.github/workflows

```yaml
jobs:
  build:
    runs-on: ubuntu-22.04  # 注意 Ubuntu 版本号

    - name: Before freeing up disk space

    - name: "Optimize Disk Space"
      uses: "hugoalh/disk-space-optimizer-ghaction@v0.8.1"  # 注意版本号

    - name: Freeing up disk space

    - name: Free up disk space complete

    - name: Checkout
      uses: actions/checkout@master  # 原文为 @main，可自定义

    - name: Initialization environment

    - name: Check Space
```

更多内容参考：  
🔗 https://github.com/esirplayground/AutoBuild-OpenWrt

> 🙏 特别感谢两位原作者的无私奉献！

---

# AutoBuild-immortalwrt  
云编译 immortalwrt-OpenWrt

---

## 编译准备步骤

### ✅ 1. 更新版本号  
将拉取命令中的 `v24.10.0` 替换为最新版 Stable Release，否则可能编译失败。  
获取地址：🔗 https://downloads.immortalwrt.org/

### 🔄 2. 更新依赖包  
进入 ImmortalWrt 官网，切换至 `v24.10` 分支，点击页面中的  
**Setup dependencies via APT**，复制内容，更新你的 `depends-immortalwrt` 文件。

### 🔁 3. 其他版本编译说明  
每个分支依赖不同。若编译其他版本，请进入该版本分支页面，  
同样点击 **Setup dependencies via APT**，复制更新 `depends-immortalwrt` 文件。

---
