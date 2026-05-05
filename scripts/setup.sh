#!/bin/bash
# Hermes WSL 中文开发环境 - 一键配置脚本
set -e

echo "🚀 Hermes WSL 中文开发环境配置开始..."

# 1. 配置 pip 清华源
echo "📦 配置 pip 国内源..."
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple 2>/dev/null || true

# 2. 配置 npm 淘宝源
echo "📦 配置 npm 国内源..."
npm config set registry https://registry.npmmirror.com 2>/dev/null || true

# 3. 中文支持
echo "🔤 配置中文支持..."
sudo apt update -qq && sudo apt install -y -qq locales fonts-noto-cjk 2>/dev/null
sudo locale-gen zh_CN.UTF-8 2>/dev/null || true

# 4. Playwright 兼容性修复
echo "🌐 检测 Playwright 环境..."
if npx playwright --version 2>/dev/null; then
    echo "   Playwright 已安装，检查浏览器..."
    if ! npx playwright install chromium 2>&1 | grep -q "success"; then
        echo "   系统 Chromium 不兼容，安装系统浏览器..."
        sudo apt install -y -qq chromium-browser 2>/dev/null || true
    fi
fi

# 5. GitHub 镜像加速
echo "🔗 配置 Git 镜像..."
git config --global url."https://mirror.ghproxy.com/https://github.com/".insteadOf "https://github.com/" 2>/dev/null || true

echo ""
echo "✅ 配置完成！重新打开终端生效。"
echo "📖 更多帮助: https://github.com/boaozn/hermes-wsl-env"
