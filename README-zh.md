# 60s Skills Lite

本项目允许 AI Agent 访问 [60s API](https://60s.viki.moe/)，进行简单的数据查询与日常任务自动化，每个 Skill 均提供了易于调用的 Shell 脚本供大模型/Agent 使用。

**📊 数据来源**

- [vikiboss/60s](https://github.com/vikiboss/60s)
- [vikiboss/60s-skills](https://github.com/vikiboss/60s-skills)
> 与 [vikiboss/60s-skills](https://github.com/vikiboss/60s-skills) 的不同：简化 SKILL.md，将调用流程写入 Shell 脚本，以便 Agent 直接调用，减少 token 消耗。

**💡 使用场景**

- 📱 移动应用新闻模块
- 🖥️ 网站首页资讯展示  
- 🤖 聊天机器人新闻推送
- 📧 邮件订阅日报生成
- 🔔 桌面通知提醒

## 技能列表
| 技能名称 | 目录路径 | 功能说明 |
| - | - | - |
| 每日新闻 (Daily News) | `daliy-news/` | 获取每日精选的 15 条新闻资讯和 1 条每日微语。支持查询历史日期的新闻。 |
| AI 最新资讯 (Daily AI News) | `daily-ai-news/` | 获取每日深度精选的 AI 行业动态、大语言模型更新及相关技术前沿新闻。支持历史日期查询。 |
| 必应每日壁纸 (Bing Wallpaper) | `bing-wallpaper/` | 获取微软 Bing 搜索引擎当天的首页高质量背景壁纸。 |
| 汇率查询 (Exchange Rate) | `exchange-rate/` | 获取货币汇率。支持指定基础货币与目标货币进行查询 |
| 历史上的今天 (Today in History) | `today-in-history/` | 获取历史上此时发生的重大事件列表。 |
| 天气查询 (Weather Query) | `weather-query/` | 专为中国城市/区县设计的天气查询服务。支持查阅当前状况（气温、风力、空气质量与生活指导指数），以及未来几天的天气预报。 |
