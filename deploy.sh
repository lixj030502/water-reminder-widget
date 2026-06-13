#!/bin/bash

# 喝水提醒小组件一键部署脚本
# 用法：./deploy.sh "提交信息"

set -e

# 颜色输出
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# 提交信息
MESSAGE="${1:-Update widget}"

echo -e "${YELLOW}🚀 开始部署喝水提醒小组件...${NC}"

# 检查是否在正确的目录
if [ ! -f "sw.js" ] || [ ! -f "index.html" ]; then
    echo -e "${RED}❌ 错误：当前目录不是 water-reminder-widget 项目根目录${NC}"
    echo "请切换到项目目录后重试："
    echo "  cd /Users/qiuyuanbifang/water-reminder-widget"
    exit 1
fi

# 检查 git 仓库
if [ ! -d ".git" ]; then
    echo -e "${RED}❌ 错误：当前目录不是 git 仓库${NC}"
    exit 1
fi

# 自动递增 Service Worker 缓存版本号
echo -e "${YELLOW}📦 更新 Service Worker 缓存版本...${NC}"

CURRENT_VERSION=$(grep -oE "CACHE_NAME = 'water-reminder-v[0-9]+'" sw.js | grep -oE "[0-9]+")

if [ -z "$CURRENT_VERSION" ]; then
    echo -e "${RED}❌ 错误：无法从 sw.js 中读取缓存版本号${NC}"
    exit 1
fi

NEXT_VERSION=$((CURRENT_VERSION + 1))
sed -i '' "s/CACHE_NAME = 'water-reminder-v${CURRENT_VERSION}'/CACHE_NAME = 'water-reminder-v${NEXT_VERSION}'/" sw.js

echo -e "${GREEN}✅ 缓存版本已从 v${CURRENT_VERSION} 更新到 v${NEXT_VERSION}${NC}"

# 检查是否有变更可提交
if git diff --quiet && git diff --cached --quiet; then
    echo -e "${YELLOW}⚠️  没有检测到文件变更${NC}"
    echo "是否需要继续推送现有提交？(y/n)"
    read -r CONTINUE
    if [[ ! "$CONTINUE" =~ ^[Yy]$ ]]; then
        echo -e "${YELLOW}已取消部署${NC}"
        exit 0
    fi
else
    # git add
    echo -e "${YELLOW}📤 提交更改...${NC}"
    git add .
    git commit -m "$MESSAGE"
    echo -e "${GREEN}✅ 已提交：$MESSAGE${NC}"
fi

# git push
echo -e "${YELLOW}☁️  推送到 GitHub...${NC}"
git push origin main

echo -e "${GREEN}✅ 部署完成！${NC}"
echo ""
echo -e "${GREEN}🌐 公开链接：https://lixj030502.github.io/water-reminder-widget/${NC}"
echo ""
echo -e "${YELLOW}⏳ GitHub Pages 通常会在 1-2 分钟内更新${NC}"
echo -e "${YELLOW}💡 如果桌面组件没有立即更新，请重新打开或 Reload${NC}"
