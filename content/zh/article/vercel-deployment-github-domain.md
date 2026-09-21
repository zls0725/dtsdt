---
title: "vercel安裝部署Github項目添加自己域名"
date: 2024-08-09
slug: "vercel-deployment-github-domain"
summary: "作為網站的運營推廣那麼一個自有域名是十分重要的，下來教你如何連結自有域名I"
source_url: "https://blog.dtsdt.com/article/vercel-deployment-github-domain"
recovered_from: wayback-machine
---

![选择项目导入](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F190c7d7a-981b-481c-ac64-3313598c320b%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25883.12.39.png?table=block&id=d8f8ce5d-35e1-4d87-af1c-b535b36d8848&t=d8f8ce5d-35e1-4d87-af1c-b535b36d8848&width=1827&cache=v2)

选择项目导入

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F5aa37e23-d76e-4f0e-a10d-17e16301b17e%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25883.14.05.png?table=block&id=f97fefe8-1db1-4dca-8dc1-56c211b5d972&t=f97fefe8-1db1-4dca-8dc1-56c211b5d972&width=1827&cache=v2)

选择要导入的项目

点击**Environment Variables**（环境变量），并添加一个属性名称为`NOTION_PAGE_ID`**，**值为步骤一获取的**页面ID**。

例如，我的页面ID是：a74dcc4214bf4a1fbf6c232738246235，则配置如

CNAME：`NOTION_PAGE_ID`

**Value (Will Be Encrypted）：**a74dcc4214bf4a1fbf6c232738246235

（32位的）

新版的notion中，页面ID的格式可能会有一点不同，例如会把页面的标题也带上：

![输入notion的ID点击add添加](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2Faaa4f142-3728-4cd2-b3d3-26fbe9987f8a%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25883.22.07.png?table=block&id=270b310a-d81e-4811-a861-8d3b101ec9fc&t=270b310a-d81e-4811-a861-8d3b101ec9fc&width=800&cache=v2)

输入notion的ID点击add添加

![deploy](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2Fad3a2060-7b7d-4a3a-b8f5-156565689cb4%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25883.15.50.png?table=block&id=2e848687-4e60-4bc6-a49f-7b98eea93183&t=2e848687-4e60-4bc6-a49f-7b98eea93183&width=652.5&cache=v2)

deploy

![大功告成](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F7d6e7d66-fc98-4e0c-a59d-8a72328fb5f0%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25883.18.34.png?table=block&id=d9bfc1f7-bd70-4f10-a2f8-3ac243efa295&t=d9bfc1f7-bd70-4f10-a2f8-3ac243efa295&width=1827&cache=v2)

大功告成

回头后台更改数据可以 同步就说明成功，如果不能同步过来重复以上步骤。

恭喜你网站发布成功

![cloudflare-dns-保存](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F1194e583-5dd5-4003-a70c-e55ff1bc7b2d%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25883.51.56.png?table=block&id=d2e5e810-ad31-4f0b-8631-b9fd4f3f9d6e&t=d2e5e810-ad31-4f0b-8631-b9fd4f3f9d6e&width=652.5&cache=v2)

cloudflare-dns-保存

• 按Vercel提示，添加一条CNAME记录值为Vercel的CNAME服务器：`cname-china.vercel-dns.com` ;（vercel默认推荐`cname.vercel-dns.com` ，这个cname在大陆访问比较慢）

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F05ba8292-5765-4093-9bee-8b893d245726%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25883.54.43.png?table=block&id=278430c5-e37e-44a4-9a9f-2d40a3be259f&t=278430c5-e37e-44a4-9a9f-2d40a3be259f&width=1827&cache=v2)

![setting- domains](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2Fcd9726f8-e840-4cb5-9632-a02c80672d84%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25884.00.04.png?table=block&id=4bce28b0-5543-4bb2-85af-be86976510f7&t=4bce28b0-5543-4bb2-85af-be86976510f7&width=1827&cache=v2)

setting- domains

![如圖示就說明cloud fire配置成功](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2Fe41a60c7-5d17-42c1-815f-a519e8b69e69%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25884.01.32.png?table=block&id=68dcd643-406f-417d-89cb-08e4d4069f62&t=68dcd643-406f-417d-89cb-08e4d4069f62&width=652.5&cache=v2)

如圖示就說明cloud fire配置成功

![添加自己的域名](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2Fff9d8235-771c-4c82-89f8-88d4779aa5a7%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25884.05.19.png?table=block&id=638f1b7d-3465-474f-91e1-7ade666b2ae4&t=638f1b7d-3465-474f-91e1-7ade666b2ae4&width=800&cache=v2)

添加自己的域名

![选第一个可以将www定向到根域名](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2Fad159295-3bed-4773-9c3d-138f24b4e896%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-12_%25E4%25B8%258B%25E5%258D%25883.16.19.png?table=block&id=c46c99ab-e18d-4088-abbc-16c00f0af4de&t=c46c99ab-e18d-4088-abbc-16c00f0af4de&width=913.65625&cache=v2)

选第一个可以将www定向到根域名

![等待运行](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2Faa66d701-6779-46cf-b0a2-daad220bac76%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25884.05.34.png?table=block&id=aa5853b8-4981-47f0-bf70-6fed0d096d0c&t=aa5853b8-4981-47f0-bf70-6fed0d096d0c&width=1827&cache=v2)

等待运行

![配置成功](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2Fddf42fd9-4b31-45ee-8541-4f5cb65221bf%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25884.05.46.png?table=block&id=3597f4a2-0e89-414f-8e56-7826d2f485a7&t=3597f4a2-0e89-414f-8e56-7826d2f485a7&width=1827&cache=v2)

配置成功

代码跑完配置完成，个人域名设置成功。

操作当中有什么问题可以留言探讨。
