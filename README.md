<div align="center">

# TokMeter

**Real-time AI cost tracking for macOS**

Track every token. Control every dollar. Never get surprised by an AI bill again.

[![macOS](https://img.shields.io/badge/macOS-13.0%2B-black?style=flat-square&logo=apple)](https://github.com/Jbsorge/TokMeter-app/releases/latest)
[![License](https://img.shields.io/badge/license-Proprietary-blue?style=flat-square)](#license)
[![Download](https://img.shields.io/badge/Download-Free-brightgreen?style=flat-square)](https://github.com/Jbsorge/TokMeter-app/releases/latest)

[**Download TokMeter**](#download) · [**See Features**](#features) · [**OpenClaw Support**](#tokmeter--openclaw--ai-agents)


</div>

---

## What is TokMeter?

TokMeter is a native macOS menu bar app that monitors your AI API spending and subscription usage across **Anthropic Claude**, **OpenAI**, and **Google Gemini** in real time.

It lives quietly in your menu bar, updating continuously. Instead of switching between several provider consoles, you get instant visibility on live burn rate, per-model token counts, and subscription progress while you work — before your cloud bill does.

Whether you're vibe-coding, burning through API credits on a product, or juggling multiple AI subscriptions, TokMeter turns fragmented and delayed usage data into a clear, always-visible dashboard.

```
C: $1.23 | O: $0.45  =  $1.68
```

---

## Why

If you're running OpenClaw, coding assistants, or AI agents, you're burning through tokens with no visibility into what it's costing you while you work. The only way to check is to stop, log into each provider's API or subscription dashboard — across Claude, OpenAI, and Gemini — and look at billing data that can lag actual usage by hours or more.

I built TokMeter because I run multiple AI models in parallel through OpenClaw and other tools and needed to know in real time what each pipeline was consuming. The alternative was switching between those dashboards constantly, or opening a surprise invoice at the end of the month.

Now I just glance at the top of my screen.

---

## Only What You Use. Only What You Configure.

Most AI cost trackers crowd your menu bar with every provider whether you use them or not.

TokMeter only shows what you've actually set up. If you work with the Gemini API in your projects, you'll see Gemini API usage. If you also have a Gemini subscription, you'll see that too. Same for Claude or OpenAI / Codex. If it's not configured, it doesn't appear — because if it's not configured, you're not using it, and it's not worth your attention.

**Claude Code, Codex, and now Gemini** — whatever your stack, TokMeter adapts to it.

---

## Features

### 🔴 Live Burn Rate — with Severity States
TokMeter tracks your spend velocity in real time and surfaces it with three visual severity states: calm, elevated, and critical. You know at a glance whether you're on track or approaching a limit.

### 💰 Multi-Provider Cost Tracking
Monitor API usage and subscription progress across:
- **Anthropic** — Claude API, all models. Claude Pro & Claude Max subscriptions
- **OpenAI** — API usage, all models. ChatGPT Plus & GPT Pro subscriptions
- **Google Gemini** — API usage (Pro, Flash), all models. Gemini Advanced subscription

### 🔍 What's in the Dropdown

The menu bar shows your combined daily spend at a glance. Open the dropdown for the full picture:

- Per-model cost breakdown across all active providers
- Input / output / cache costs and token counts per model
- **Latest** — cost of the most recent API activity since the last refresh
- Today and month-to-date totals per provider
- Subscription usage bars with per-model rate limit windows
- Trends: know when you'll hit your limit relative to your reset date
- Live vs snapshot freshness indicators
- Export current data to Markdown

### 📊 Subscription Spend Projection
Are you going to hit your usage limit before your plan resets? Or do you have enough headroom to push harder this week?

TokMeter's spend projection answers that in real time. See where you stand against your reset date, understand your consumption pace, and decide — throttle back, or run that next batch knowing you have the room.

### 🔐 Privacy-First Architecture
TokMeter is built on a minimal-knowledge principle. Your API credentials are stored in your local system Keychain and used to query provider APIs directly from your device. TokMeter never accesses your conversation content — only usage and cost data from provider endpoints. Any future infrastructure will be held to the same standard: handling the minimum data needed, nothing more.

### ⚡ Native Performance
Built in Swift for macOS. Fast, lightweight, and battery-friendly — exactly what a menu bar app should be.

---

## TokMeter + OpenClaw + AI Agents

Fed up with cron jobs, heartbeats, skills you didn't know were loading, or bloated agents quietly torching your token budget?

If you run **OpenClaw** — or any combination of agentic AI and orchestration pipelines — TokMeter gives you the fastest visibility into model usage and cost short of logging into each provider's dashboard, right in your macOS menu bar.

TokMeter refreshes every two minutes. Each refresh shows the delta since the last poll, broken down by provider, model, and data type — input and output cost and tokens, cached or not. If you ran one thing and nothing else was active, that delta is a close proxy for your run cost. If you had parallel activity — another pipeline, a Ripple pass still processing — you're reading a combined signal, but the granularity over model, time, and token amounts helps you isolate the cost source.

Right in your menu bar, while you work.

---

## Why TokMeter?

| Problem | TokMeter |
|---|---|
| Surprise invoice at end of month | Live AI costs and burn rate, always visible |
| Multiple AI tools, no unified view | One dashboard for Claude, OpenAI, and Gemini |
| Don't know if you'll hit your subscription limit | Spend projection against your reset date |
| Menu bar cluttered with providers you don't use | Only configured providers appear |
| Running OpenClaw with no cost feedback between runs | Delta since last refresh, broken down by provider, model & type (I/O + cached) |
| Claude Code and Codex both running — which consumed what? | Per-provider model breakdown shows you where spend moved |

---

## Download

TokMeter is free to download.

**Option A — Homebrew**

```bash
brew tap jbsorge/tokmeter && brew install --cask tokmeter
```

Homebrew downloads, verifies, and installs TokMeter for you. Launch it from Applications.

**Option B — Direct Download**

| Platform | Minimum OS | Download |
|---|---|---|
| macOS (Apple Silicon) | 13.0 Ventura | [**Download TokMeter.zip**](https://github.com/Jbsorge/TokMeter-app/releases/latest) |

---

## First Launch: macOS Security Prompt

macOS blocks apps from independent developers on first launch. You'll see a popup saying TokMeter can't be opened.

To allow it:
1. Click **Done** to dismiss the popup
2. Open **System Settings → Privacy & Security**
3. Scroll down — you'll see *"TokMeter.app was blocked"*
4. Click **Open Anyway**
5. Confirm when prompted

You only need to do this once.

---

## Setup

### API Keys

TokMeter uses Admin API keys to read your usage data. These are different from the regular API keys you use in your projects.

| Provider | Key format | Where to get it |
|---|---|---|
| Anthropic | `sk-ant-admin-...` | [console.anthropic.com → Settings → Admin API Keys](https://console.anthropic.com) |
| OpenAI | `sk-admin-...` | [platform.openai.com → Settings → Admin Keys](https://platform.openai.com/settings/organization/admin-keys) |
| Gemini | OAuth | Configured via Settings in TokMeter |

Enter each key once in **TokMeter Settings**. Keys are stored locally in your system Keychain and remain valid until you revoke them.

### After setup

TokMeter begins tracking immediately. Only the providers you've configured will appear.

---

## Supported Providers & Plans

| Provider | API Tracking | Subscription Tracking |
|---|---|---|
| Anthropic Claude | ✅ | ✅ Pro · Max |
| OpenAI | ✅ | ✅ ChatGPT Plus · GPT Pro |
| Google Gemini | ✅ | ✅ Gemini Advanced |

---

## FAQ

**Does TokMeter store my API keys on a server?**
No. Keys are stored in your local system Keychain. TokMeter queries provider APIs directly from your device.

**Why do I need an Admin API key? Can I use my regular API key?**
Usage data — costs, token counts, subscription utilization — is only accessible via Admin API keys. Your regular project API keys don't have read access to usage endpoints.

**Why can't I see a provider in the menu bar?**
TokMeter only shows providers you've configured. If a provider isn't set up in Settings, it won't appear. This is intentional — no noise, no clutter.

**Does spend projection work for API usage?**
Spend projection is currently focused on subscription plans, where your usage resets on a fixed date and you need to know if you're on pace. API projection is on the radar.

**Does TokMeter show per-run costs for OpenClaw?**
Not exactly. TokMeter shows the delta since the last refresh — broken down by provider, model, and token type. If only one thing was running, that delta is a close proxy for your run cost. With parallel activity, you're reading a combined signal, though the model and token breakdown helps you reason about what did what.

**Is TokMeter open source?**
No. TokMeter is a proprietary app distributed via GitHub Releases.

---

## System Requirements

- **macOS:** 13.0 Ventura or later — Apple Silicon (M1/M2/M3/M4)
- Internet connection for live usage polling

---

## Feature Requests

Have something you'd like to see in TokMeter? [**Open a feature request →**](https://github.com/Jbsorge/TokMeter-app/discussions)

---

## License

TokMeter is proprietary software. All rights reserved. You may not redistribute, reverse-engineer, or modify the application. See [LICENSE](LICENSE) for full terms.

---

## Contact

- 💬 **Feature requests & discussion:** [GitHub Discussions](https://github.com/Jbsorge/TokMeter-app/discussions)
- 📧 **Everything else:** [hello@tokmeter.app](mailto:hello@tokmeter.app)

---

<div align="center">

Built for developers, builders, and AI power users who like to know exactly where their compute goes.

**[⬇ Download TokMeter](https://github.com/Jbsorge/TokMeter-app/releases/latest)**

</div>
