---
title: "The site moved from Notion to Hugo"
date: 2026-09-21
draft: false
translationKey: "site-relaunch"
description: "dtsdt.com is back online, rebuilt with Hugo: faster pages, complete SEO, simpler publishing."
tags: ["Hugo", "Website", "SEO"]
categories: ["Site log"]
series: ["Site rebuild"]
---

The site is back. It used to run on Notion with cloud-side rendering; now it is generated statically with Hugo.

## Why the change

The old setup depended on Notion too much: whenever Notion changed something, or the server-side rendering broke, the whole site went down. A static site generates plain HTML up front, so there is no runtime dependency that can fail.

## What changed

- **Faster**: pages are pre-built static HTML with no front-end framework to load.
- **Better SEO**: it generates `sitemap.xml`, `robots.txt`, full-text RSS, Open Graph cards and structured data automatically.
- **Easier publishing**: posts are just Markdown files — commit and it builds.
- **Less maintenance**: only Hugo and the theme, so upgrades stay simple.

## What's next

Older posts will be brought back and reorganised into series.
