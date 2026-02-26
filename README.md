# 60s Skills Lite

This project allows AI Agents to access the [60s API](https://60s.viki.moe/) for simple data queries and daily task automation, each providing an easy-to-use Shell script for LLM/Agent integration.

**📊 Data Sources**

- [vikiboss/60s](https://github.com/vikiboss/60s)
- [vikiboss/60s-skills](https://github.com/vikiboss/60s-skills)
> Differences from [vikiboss/60s-skills](https://github.com/vikiboss/60s-skills): Simplified SKILL.md, wrote the call process into a Shell script so that the Agent can call it directly, reducing token consumption.

**💡 Use Cases**

- 📱 Mobile app news modules
- 🖥️ Homepage information display for websites
- 🤖 Chatbot news push
- 📧 Email subscription daily report generation
- 🔔 Desktop notification reminders

## Skills List
| Skill Name | Directory Path | Description |
| - | - | - |
| Daily News | `daliy-news/` | Fetches 15 curated daily news items and 1 daily quote. Supports querying news for historical dates. |
| Daily AI News | `daily-ai-news/` | Fetches daily deep-selected AI industry dynamics, large language model updates, and related cutting-edge technology news. Supports historical date tracking. |
| Bing Wallpaper | `bing-wallpaper/` | Fetches today's high-quality background wallpaper from the Microsoft Bing search engine homepage. |
| Exchange Rate | `exchange-rate/` | Fetches currency exchange rates. Supports specifying base and target currencies for queries. |
| Today in History | `today-in-history/` | Fetches a list of major historical events that occurred on this day. |
| Weather Query | `weather-query/` | A weather query service specially designed for Chinese cities/districts. Supports checking current conditions (temperature, wind, air quality, and life index), as well as multi-day weather forecasts. |
