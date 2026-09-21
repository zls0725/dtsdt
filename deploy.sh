#!/bin/bash
# 一条命令：本地构建 + 推到 Cloudflare Pages（项目名 dtsdt）
# 用法：  ./deploy.sh            # 部署到生产
#        ./deploy.sh preview    # 部署成预览链接，不动生产
set -euo pipefail
cd "$(dirname "$0")"

PROJECT="dtsdt"
BRANCH="${2:-main}"

echo "▶ 构建（Hugo 压缩输出）"
hugo --minify --gc

if [ "${1:-}" = "preview" ]; then
  echo "▶ 部署预览"
  npx --yes wrangler pages deploy public --project-name "$PROJECT" --branch preview --commit-dirty=true
else
  echo "▶ 部署生产（${BRANCH}）"
  npx --yes wrangler pages deploy public --project-name "$PROJECT" --branch "$BRANCH" --commit-dirty=true
fi
