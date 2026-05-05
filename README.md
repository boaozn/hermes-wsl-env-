# Hermes WSL 中文开发环境 🚀

一键配置 WSL + Hermes 中文 AI 开发环境。解决中国开发者最头疼的那些问题。

## 快速开始

```bash
curl -fsSL https://raw.githubusercontent.com/boaozn/hermes-wsl-env/main/scripts/setup.sh | bash
```

## 解决的问题

- 🇨🇳 GitHub 慢 → 自动镜像加速
- 🖥️ Playwright 不兼容 → 自动装系统 Chromium
- 🔤 中文乱码 → 自动配置
- 📦 pip/npm 慢 → 自动换源

## 在 Hermes 中使用

加载此技能：
```
/skill hermes-wsl-env
```

或安装：
```bash
hermes skills install https://raw.githubusercontent.com/boaozn/hermes-wsl-env/main/SKILL.md --name hermes-wsl-env
```

## 许可

MIT
