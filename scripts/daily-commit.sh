#!/usr/bin/env bash
# 本脚本用于本地测试：向 commits.log 追加时间并提交
set -e
TIMESTAMP="$(date -u +"%Y-%m-%d %H:%M:%S UTC")"
echo "Local commit at $TIMESTAMP" >> commits.log
git add commits.log
git commit -m "chore(daily): local test commit $TIMESTAMP" || echo "No changes to commit"
git push
