---
name: hermes-wsl-env
description: 一键配置 WSL + Hermes 中文 AI 开发环境。自动解决 Ubuntu 26.04 上的网络问题、Playwright 兼容性、中文显示乱码、pip 源配置等痛点。专为中国开发者设计。
version: 1.0.0
author: boaozn
license: MIT
metadata:
  hermes:
    tags: [wsl, ubuntu, chinese, environment, setup, hermes, developer-tools]
    related_skills: [hermes-agent, wsl-integration]
---

# Hermes WSL 中文开发环境

## 简介

专为中国 Windows + WSL 开发者设计的一键环境配置工具。解决以下痛点：

- 🇨🇳 **GitHub 网络慢** — 自动配置国内镜像源
- 🖥️ **Ubuntu 26.04 Playwright 不兼容** — 自动检测并安装系统 Chromium
- 🔤 **中文显示乱码** — 配置 locale 和中文字体
- 📦 **pip/npm 慢** — 自动换国内源
- 🔧 **Hermes 新手上路** — 从零配置 Hermes Agent

## 使用方法

直接在 Hermes 中加载本技能，或运行：

```bash
# 一键配置
curl -fsSL https://raw.githubusercontent.com/boaozn/hermes-wsl-env/main/scripts/setup.sh | bash
```

## 功能模块

| 模块 | 说明 | 自动执行 |
|:----|:----|:-------:|
| 网络优化 | GitHub 镜像、pip 清华源、npm 淘宝源 | ✅ |
| 中文支持 | locale、中文字体、输入法 | ✅ |
| Playwright | 检测系统 → 自动安装系统 Chromium | ✅ |
| Hermes 配置 | 模型推荐、技能安装、内存配置 | 手动 |
| 开发工具 | Node.js、Python、Git 最佳实践 | ✅ |

## 前置要求

- Windows 11 + WSL2
- Ubuntu 24.04+ / 26.04
- Hermes Agent v0.12.0+
- 网络连接（安装时）

## 文件说明

```
hermes-wsl-env/
├── SKILL.md              # 本技能文件
├── scripts/
│   ├── setup.sh          # 一键安装脚本
│   ├── fix-chinese.sh    # 中文修复脚本
│   └── fix-playwright.sh # Playwright 修复脚本
├── templates/
│   └── config.yaml       # Hermes 推荐配置模板
└── README.md             # 项目说明
```
