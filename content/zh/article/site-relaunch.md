---
title: "本站已从 Notion 迁到 Hugo"
date: 2026-09-21
draft: false
translationKey: "site-relaunch"
description: "dtsdt.com 重新上线：改用 Hugo 静态生成，打开更快、SEO 更完整、写文章更省事。"
tags: ["Hugo", "建站", "SEO"]
categories: ["站点日志"]
series: ["站点重建"]
---

网站重新上线了。这次把原来跑在 Notion + 云端渲染上的站点，换成了 Hugo 静态生成。

## 为什么换

原来的方案对 Notion 依赖太重：Notion 那边一有变动、或者服务端渲染出问题，整站就打不开。静态站点把文章直接生成成 HTML，没有运行时依赖，也不会因为第三方服务抽风而挂掉。

## 变了什么

- **打开更快**：页面是预先生成的静态 HTML，没有前端框架要加载。
- **SEO 更完整**：自动生成 `sitemap.xml`、`robots.txt`、RSS 全文、Open Graph 卡片和结构化数据。
- **写文章更省事**：文章就是 Markdown 文件，写完提交就自动构建上线。
- **更好维护**：整站依赖少，只有 Hugo 和主题，升级不会牵一发动全身。

## 接下来

会把以前发过的文章陆续整理回来，并按系列重新归类。
