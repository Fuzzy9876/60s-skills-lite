---
name: today-in-history
description: Use when users want to know what historical events happened on today's date in history.
---

# Today In History Skill

This skill helps AI agents fetch and present historical events that happened on today's date using the 60s API.

## When to Use This Skill

Use this skill when users:
- Ask for historical events that occurred on today's date
- Want a quick daily briefing on history
- Request historical events in different formats (text, JSON, markdown)

## How to Use

Execute the associated `scripts/today.sh` script to fetch the historical events.

```bash
./scripts/today.sh [options]
```

### Options

- `--encoding, -e <format>`: Optional. Specifies the output response format. Valid options are `text`, `json`, and `markdown`. The API defaults to `json` if not specified.

### Return Values

The script securely calls the 60s today-in-history API and outputs the response to `stdout`. Depending on the `encoding` parameter, the response could be a JSON string, plain text, or markdown.

### Usage Examples

```bash
# Get today in history using default API encoding (json)
./scripts/today.sh

# Get today in history in plain text format
./scripts/today.sh --encoding text

# Get today in history in markdown format
./scripts/today.sh -e markdown
```

## Response Format

To balance information depth with token consumption, you **MUST** use the following rules for the `encoding` parameter:

1. **Default Strategy (`--encoding markdown`)**
   - **When to use:** By default for standard historical event inquiries.
   - **Why:** Returns detailed information (event, year, description, link) nicely formatted with moderate token usage.

2. **Brief Information (`--encoding text`)**
   - **When to use:** When the user requests brief or summarized events.
   - **Why:** Returns only essential details (event and year) in plain text, saving maximum tokens.

3. **Complete Information (`--encoding json`)**
   - **When to use:** Only when you need raw data, detailed fields, or comprehensive data formatting.
   - **Why:** Returns the complete formatted API payload, which is highly token-heavy.
