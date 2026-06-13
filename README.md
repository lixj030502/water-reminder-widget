# 💧 喝水提醒（Water Reminder）

一个清新可爱的桌面喝水提醒 Web App，帮助你养成规律饮水的好习惯。

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![PWA](https://img.shields.io/badge/PWA-Supported-brightgreen.svg)

## ✨ 功能特点

- 🌊 **动态水杯**：水位随饮水量实时上升，带波浪动画
- 📊 **进度追踪**：显示今日已喝水量、目标和完成百分比
- ⚡ **快捷记录**：支持 100ml / 250ml / 500ml 一键添加
- ✏️ **自定义水量**：手动输入任意 ml 数
- ↩️ **撤销操作**：点错可撤回上一次记录
- 🎯 **目标设置**：默认每日 2000ml，可自由调整
- ⏰ **定时提醒**：设置提醒间隔，到点弹出通知 + 提示音
- 💾 **本地存储**：数据保存在浏览器中，刷新不丢失
- 🎉 **达成庆祝**：完成今日目标时会有彩带动画
- 📱 **PWA 支持**：可安装到桌面/主屏幕，离线也可用
- 🪟 **液态玻璃 UI**：清新柔和的玻璃拟态设计风格

## 🚀 快速开始

### 在线预览

你可以直接打开 `index.html` 文件，或通过本地服务器运行：

```bash
cd water-reminder-widget
python3 -m http.server 8082
```

然后在浏览器访问 `http://localhost:8082`。

### 安装为桌面应用

#### macOS Safari
1. Safari 打开页面
2. 菜单栏 → 文件 → 添加到程序坞

#### Chrome / Edge
1. 打开页面
2. 地址栏右侧点击安装图标（或 ⋮ → 保存并分享 → 安装页面为应用）

#### iPhone / iPad
1. Safari 打开页面
2. 点击分享按钮 → 添加到主屏幕

### 作为桌面悬浮小组件（推荐）

使用 **Helium** 可以把网页变成始终置顶的悬浮窗口，放在桌面角落当小组件用。

#### 下载 Helium

- 官网：https://slashlos.github.io/Helium/
- GitHub Releases：https://github.com/slashlos/Helium/releases

下载 `.zip` 或 `.dmg`，解压后拖到「应用程序」文件夹。

#### 使用步骤

1. 打开 Helium
2. 按 `Cmd + L` 或点击地址栏
3. 输入你的 GitHub Pages 链接：
   ```
   https://你的用户名.github.io/water-reminder-widget/
   ```
4. 调整窗口大小到约 **340×560**
5. 拖到屏幕角落
6. 点击置顶按钮（图钉图标），让它始终显示在最上层

## 📁 项目结构

```
water-reminder-widget/
├── index.html          # 主页面
├── manifest.json       # PWA 配置
├── sw.js               # Service Worker（离线支持）
├── icon.svg            # 应用图标
├── deploy.sh           # 一键部署脚本
├── LICENSE             # MIT 许可证
└── README.md           # 项目说明
```

## 🛠 技术栈

- HTML5
- CSS3（Glassmorphism、CSS Animations）
- Vanilla JavaScript
- Service Worker
- LocalStorage
- Web Notifications API

## 🚀 自动部署

项目包含 `deploy.sh` 一键部署脚本，会自动：

1. 递增 `sw.js` 的缓存版本号（解决 PWA 缓存问题）
2. `git add .`
3. `git commit`
4. `git push origin main`

### 使用方法

```bash
./deploy.sh "你的改动说明"
```

例如：

```bash
./deploy.sh "优化水面动画效果"
```

如果没有写提交信息，会使用默认信息 `Update widget`：

```bash
./deploy.sh
```

## 📄 开源协议

本项目基于 [MIT License](LICENSE) 开源，可自由使用、修改、分发。

## 🙋 作者

- 小红书：[萩原彼方](https://www.xiaohongshu.com/user/profile/54c8cb16b4c4d6648cab02d0)
