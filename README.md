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

## 📁 项目结构

```
water-reminder-widget/
├── index.html          # 主页面
├── manifest.json       # PWA 配置
├── sw.js               # Service Worker（离线支持）
├── icon.svg            # 应用图标
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

## 📄 开源协议

本项目基于 [MIT License](LICENSE) 开源，可自由使用、修改、分发。

## 🙋 作者

- 小红书：[萩原彼方](https://www.xiaohongshu.com/user/profile/54c8cb16b4c4d6648cab02d0)
