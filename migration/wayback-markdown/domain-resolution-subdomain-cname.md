---
title: "域名解析子域名A和CNAME"
slug: "domain-resolution-subdomain-cname"
summary: "要将一个主域名（如example.com）添加到域名（如sub.example.com），你可以按照以下步骤进行操作："
source_url: "https://blog.dtsdt.com/article/domain-resolution-subdomain-cname"
recovered_from: wayback-machine
---

type

status

date

slug

summary

tags

category

icon

password

URL

progress

## **一个主域名如何添加子域名？**

要将一个主域名（[如example.com](http://xn--example-i22m.com/)）添加到域名（[如sub.example.com](http://xn--sub-eo8e.example.com/)），你可以按照以下步骤进行操作：

### **购买主域名：**

首先，你需要购买一个主域名。你可以通过域名注册服务提供商（如GoDaddy、Namecheap、Google Domains、namesilo等）来购买。

比较推荐namesilo本人就在使用。具体购买流程请看namesilo域名购买

![namesilo主页](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F5bb6bead-9116-468f-9d8c-0e0b16bc6d2e%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%258812.35.04.png?table=block&id=b78d3cf0-3606-40e4-a79c-164d242828da&t=b78d3cf0-3606-40e4-a79c-164d242828da&width=1332&cache=v2)

namesilo主页

### **访问域名注册商的控制面板：**

登录到你的域名注册商帐户，找到你购买的主域名的管理控制面板。

就拿cloudflare来操作

![cloudflare主页](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F553005b9-04f5-46dd-b290-6cc29279a47c%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%258812.39.09.png?table=block&id=9b97b6d6-c063-4d45-9ba2-f6211c55615a&t=9b97b6d6-c063-4d45-9ba2-f6211c55615a&width=708&cache=v2)

cloudflare主页

登陆最好有Gmail

![cloudflare控制面板](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F5d1d2a04-b5ff-4562-b968-eabe9ec6c639%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%258812.41.42.png?table=block&id=77ed1b1a-b242-4d74-9b5b-f87d6f300dd5&t=77ed1b1a-b242-4d74-9b5b-f87d6f300dd5&width=708&cache=v2)

cloudflare控制面板

### **添加子域名：**

在控制面板中找到 DNS 设置或 DNS 管理。

![路径- DNS-记录](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F5fa0d6c9-292a-4e27-892f-34c0884e80b8%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%258812.42.46.png?table=block&id=421eb3f5-459a-4f3f-8387-e481007d698c&t=421eb3f5-459a-4f3f-8387-e481007d698c&width=1796&cache=v2)

路径- DNS-记录

添加一个新的记录（通常是 A 记录或 CNAME 记录）。

🌐

A 记录：指向特定的 IP 地址。

CNAME 记录：指向另一个域名。

![添加记录](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2Fe3641183-0084-4346-877f-6f7ee0b04fe1%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%258812.49.39.png?table=block&id=0c582847-a17c-40f4-8f73-a10549ec7a63&t=0c582847-a17c-40f4-8f73-a10549ec7a63&width=708&cache=v2)

添加记录

### **配置子域名：**

1. 如果你要将 sub.example.com 指向特定的 IP 地址，你可以添加 A 记录：
   css复制程式码

2. 主机名（或子域名）：sub

3. 类型：A

4. 值：目标IP地址

🌐

css

主機名（或子域名）：sub
類型：A
值：目標IP地址

1. 如果你要将 sub.example.com 指向另一个域名，你可以添加 CNAME 记录：
   lua复制程式码

2. 主机名（或子域名）：sub

3. 类型：CNAME

4. 值：目标域名（如 another.example.com）

🌐

lua

主機名（或子域名）：sub
類型：CNAME
值：目標域名（如 [another.example.com](http://another.example.com/)）

操作如下

### **保存更改：**

保存你所做的更改，并等待 DNS 记录更新。这可能需要几分钟到48小时不等，具体取决于 DNS 注册商。

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F572b3492-abf5-4747-8401-409c34ea46ce%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%25881.34.40.png?table=block&id=6a01e0f6-e5e6-4cff-88d4-8395e079f828&t=6a01e0f6-e5e6-4cff-88d4-8395e079f828&width=652.5&cache=v2)

![保存更改](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F83319ea5-89af-419a-96e9-38e87cdccd7e%2F3c34d47f-ca5c-49c5-b6a4-ce7bfd8579d8%2F%25E8%259E%25A2%25E5%25B9%2595%25E6%2588%25AA%25E5%259C%2596_2024-07-11_%25E4%25B8%258B%25E5%258D%258812.54.59.png?table=block&id=5a65185b-7431-433e-b636-531464e37032&t=5a65185b-7431-433e-b636-531464e37032&width=1796&cache=v2)

保存更改

### **验证设置：**

- 你可以使用 ping 命令或网络工具部署来验证你的子域名是否正确解析到目标 IP 地址或域名。

这样，你就可以成功地将主域名添加到子域名中。
