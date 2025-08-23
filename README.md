```markdown
# Daily Commit Bot

这个仓库演示如何使用 GitHub Actions 实现每天自动提交（daily commit）。

功能
- 工作流：.github/workflows/daily-commit.yml
- 每次运行会向 `commits.log` 文件追加一行时间戳并提交到仓库
- 默认每日 UTC 00:00 触发（可在 workflow 的 cron 中调整）
- 可以通过 workflow_dispatch 手动触发测试

使用说明
1. 在 GitHub 上创建新仓库（见下方步骤 A）。仓库名我默认为 `daily-commit-bot`（你可以在创建时改名）。
2. 在本地把仓库文件放入一个目录并按下面的 Git 命令推送到你新建的远程仓库。
3. 推送成功后，进入仓库 Actions 页可以手动运行（workflow_dispatch）来测试；之后工作流会按 cron 定时运行（cron 使用 UTC）。

安全与权限
- 工作流设置了 `permissions: contents: write`，并使用 `actions/checkout@v4`（persist-credentials）来允许 workflow 使用内置 GITHUB_TOKEN 推送提交。
- 提交时会使用 `${{ github.actor }}` 作为 git 用户名和 noreply 邮箱。
```
