# dtsdt.com

个人网站源码：**Hugo** 静态生成 + **PaperMod** 主题 + **Cloudflare Pages** 托管，中英双语。

- 中文（默认，根目录）：`content/zh/`
- 英文（`/en/`）：`content/en/`

线上地址：`https://dtsdt.com`（切域名前临时用 `https://dtsdt.pages.dev`）

---

## 发一篇文章

```bash
hugo new article/文章文件名.md     # 生成草稿（draft: true）
# 编辑 content/article/文章文件名.md，把 draft 改成 false
./deploy.sh                        # 构建 + 部署上线
```

文章路径规则：`content/article/<文件名>.md` → `https://dtsdt.com/article/<文件名>/`
（和老站的 `/article/<slug>/` 一致，为的是接住原有的搜索排名。）

## 常用命令

| 命令 | 作用 |
| --- | --- |
| `hugo server -D` | 本地预览（含草稿），改文件即时刷新 |
| `hugo --minify --gc` | 只构建，产物在 `public/` |
| `./deploy.sh` | 构建 + 部署到生产 |
| `./deploy.sh preview` | 构建 + 出一个预览链接，不动生产 |

## 目录说明

```
hugo.toml           站点配置（标题、SEO、菜单、搜索）
content/article/    文章（Markdown）
content/*.md        归档 / 搜索 / 关于 等单页
static/             favicon 等静态文件
migration/          老站路径清单（做 301 跳转用）
themes/PaperMod/    主题（已内嵌进仓库，方便云端构建）
```

## 配置要点

- `params.homeInfoParams`：首页那句开场白
- `params.description` / `keywords`：SEO 描述，改这里
- `menus.main`：顶部导航
- `enableGitInfo = true`：文章 `lastmod` 取 git 提交时间，不需要手写

## 注意

- 主题文件是**直接提交**进仓库的（不用 submodule），Cloudflare Pages 云端构建才不会缺文件。
- 升级主题：删掉 `themes/PaperMod` 重新克隆官方仓库，再提交一次。
- `public/`、`resources/` 已进 `.gitignore`，不要提交。
