<div align="center">

# TokMeter

**Your AI usage, always at a glance in your menu bar.**

What did I just use? What did I just spend? How much have I got left? Should I push or slow down? TokMeter keeps the answers in one simple dropdown — only the tools you use, and only the ones you want to see.

[![macOS](https://img.shields.io/badge/macOS-13.0%2B-black?style=flat-square&logo=apple)](https://github.com/Jbsorge/TokMeter-app/releases/latest)
[![License](https://img.shields.io/badge/license-Proprietary-blue?style=flat-square)](#license)
[![Download](https://img.shields.io/badge/Download-Free-brightgreen?style=flat-square)](https://github.com/Jbsorge/TokMeter-app/releases/latest)
[**Download TokMeter**](#download) · [**See Features**](#features) · [**OpenClaw Support**](#tokmeter--openclaw--ai-agents)


</div>

---
## What is TokMeter?

You've spent 12% of your weekly quota since the last time you looked, three hours ago this morning. What was it that spent so much? You go to the Claude dashboard and all you get is one number: 67% used, Fable at 75% of weekly allowance, and reset five days from now at 6:00 pm. Two days into the week, two-thirds already gone — something is wrong, and you can't put your finger on it. What was it, so you can turn it off or calm it down?

You click TokMeter in your menu bar and see it immediately: tall columns between 9:40 and 11:10, all on the Claude and Fable bars. Your agents spent the whole morning vibe-coding on the most expensive model — searches, routine edits, retries — work that Haiku or a cheaper model would have handled just as well. Switch the model down, watch the columns settle, and make it to Friday with quota to spare.

TokMeter stays small. One bar shows where you are, the waveform shows when you got there, and the projection shows whether your current pace will make it to reset.

It tracks only the providers you use, with model-specific limits where they are available. Add API or extra-usage spending too if you need it.

TokMeter is a macOS menu bar app that brings subscription allowances and API or extra-usage spending together across **Anthropic Claude, OpenAI and ChatGPT, Google Gemini and Antigravity, Cursor, and OpenRouter**.

See direct Claude and ChatGPT plans, models bundled with Cursor, and usage routed through OpenRouter in one place. TokMeter makes overlapping usage visible, helping you decide where each kind of work belongs and whether every plan is earning its place.

It shows the provider's own percentage or dollar figure when one is available. It does not invent a combined percentage for providers that expose separate limits.

<p align="center"><img src="assets/menubar-mockup.svg" alt="TokMeter menu bar: C:42% O:17% | API $32.05" /></p>

It lives quietly in your menu bar, updating throughout the day. Instead of switching between provider consoles, you get an at-a-glance view of allowance pace, per-model detail where the provider supplies it, and API or extra-usage spending while you work.

Whether you're vibe-coding, burning through API credits on a product, or juggling multiple AI subscriptions, TokMeter turns fragmented usage numbers into a clear at-a-glance picture — with the hour-by-hour story one hover away.

---
## Why

Checking your AI usage usually means opening each provider one by one—or opening a comprehensive dashboard full of providers, bars and features you never use. Either way, you still have to hunt for the answer.

**TokMeter** gives you the answer in one dropdown: where each subscription stands, whether your current pace will last until reset, how much you may leave unused, and whether you are heading to run out early and have to wait or pay for extra usage. It puts that beside your extra spending, so you can see where tokens—or money—may be left on the table.

---
## Only What You Use. Only What You Choose to See.

**TokMeter** only shows the supported providers you use, all at a glance.

If you use one but do not want it in view, you can hide it yourself—and bring it back whenever you want.

---
## Features

### 🔴 Live Burn Rate — with Severity States
**TokMeter** tracks your spend velocity and surfaces it with three visual severity states: calm, elevated, and critical. You know at a glance whether you're on track or approaching a limit.

### 💰 Multi-Provider Cost Tracking
Monitor API or extra-usage spending and subscription progress across:

- **Anthropic Claude** — Claude API costs and Claude Pro or Max subscription allowances
- **OpenAI** — OpenAI API costs and ChatGPT Plus or Pro subscription allowances
- **Google Gemini / Antigravity** — supported local API costs and the separate allowance pools the provider reports
- **Cursor** — plan allowance, Cursor-model and other-model allocation where available, Grok Bot allowance where available, and provider-reported on-demand spending
- **OpenRouter** — today and month-to-date costs, credit balance, and per-model spending detail

### 📊 Subscription Spend Projection
Are you going to hit your usage limit before your plan resets? Or do you have enough headroom to push harder this week?

Where available, TokMeter projects your allowance windows as readings update, showing whether your current pace is likely to last until reset. Decide whether to throttle back or push while you have room to spare.

### 🔐 Privacy-First Architecture
TokMeter uses provider and supported local sources to calculate and display your usage, allowances and costs. It does not extract, display, transmit or persist conversation text. Manually entered Anthropic, OpenAI and OpenRouter keys remain in TokMeter’s owner-only local configuration.

### ⚡ A Small Native macOS Menu-Bar App
TokMeter is a signed macOS menu-bar application, notarised by Apple and built on Python and AppKit. It stays out of the Dock and keeps its interface in the menu bar, where the information is needed.

---
## TokMeter + OpenClaw + AI Agents

Fed up with cron jobs, heartbeats, skills you didn't know were loading, or bloated agents quietly torching your token budget?

If you run **OpenClaw**, **Hermes**, or any combination of agentic AI and orchestration pipelines, TokMeter gives you fast visibility into model usage and cost without opening provider after provider, right in your macOS menu bar.

TokMeter records periodic provider readings and shows API or extra usage since you last checked, with provider, model and token detail where the source supplies it. If you ran one thing and nothing else was active, that change is a close proxy for your run cost. If several things were active, the timeline still shows when usage moved—down to the relevant part of the hour—so you can focus on what was happening then.

Right in your menu bar, while you work.

---
## Why TokMeter?
| Problem | TokMeter |
|---|---|
| Surprise invoice at end of month | API or extra-usage costs beside the time window where provider and model usage moved |
| Multiple AI tools, no unified view | One dropdown for Claude, OpenAI, Gemini, Antigravity, Cursor and OpenRouter |
| Don't know if you'll hit your subscription limit | Projection against reset where the allowance supports it |
| Menu bar cluttered with providers you don't use | Only the providers you use and choose to see |
| Running OpenClaw or Hermes with no cost feedback between runs | Usage since you last checked, with provider and model detail and when it moved |
| Usage changed — when did it happen? | The timeline narrows it to the relevant period, by provider and model |

---
## Download

**TokMeter** is free to download.

**Option A — Homebrew**

```bash
brew tap jbsorge/tokmeter && brew install --cask tokmeter
```

Homebrew downloads, verifies, and installs TokMeter for you. Launch it from Applications.

**Option B — Direct Download**

| Platform | Minimum OS | Download |
|---|---|---|
| macOS (Apple Silicon) | 13.0 Ventura | [**Download TokMeter.dmg**](https://github.com/Jbsorge/TokMeter-app/releases/latest) |

Open `TokMeter.dmg`, double-click TokMeter, and choose **Install**. TokMeter copies itself to Applications and reopens from there. You can then eject the disk image.

If macOS unexpectedly rejects a valid download, confirm that it came from the latest release page and try the download again before using any security override.

---

## Setup

**TokMeter** uses the source appropriate to each provider:

| Data | Local source |
|---|---|
| Anthropic API spending | Anthropic admin key entered in **Configure API keys...** ([Anthropic console](https://console.anthropic.com)) |
| OpenAI API spending | OpenAI admin key entered in **Configure API keys...** ([OpenAI settings](https://platform.openai.com/settings/organization/admin-keys)) |
| Claude subscription allowances | Existing Claude Code sign-in |
| ChatGPT subscription allowances | Existing Codex CLI sign-in |
| Gemini / Antigravity | Supported local Gemini or Antigravity sources |
| Cursor allowances and on-demand spending | Existing signed-in Cursor app |
| OpenRouter billed usage and credit balance | OpenRouter Management key |

Anthropic and OpenAI admin keys and a manually entered OpenRouter Management key are stored in `~/.usage-monitor/config.json`, readable only by the owning account. Supported OpenRouter environment or local-discovery sources are not copied into it. TokMeter reads Cursor's existing local database in read-only mode and never reads its refresh token.

After setup, TokMeter begins checking the available sources. Only providers with a verified connection or eligible saved snapshot appear.

---

## Supported Providers & Plans

**TokMeter** deliberately focuses on the most widely used AI tools so it stays simple and intuitive while delivering the most value to the most people. New providers are added based on real usage and user requests—not simply to make the list longer.

| Provider | API / extra-usage spending | Subscription allowance |
|---|---:|---:|
| Anthropic Claude | Yes | Claude Pro / Max |
| OpenAI | Yes | ChatGPT Plus / Pro |
| Google Gemini / Antigravity | Supported local sources | Reported Gemini / Antigravity pools |
| Cursor | Provider-reported on-demand spending | Plan and model pools where Cursor reports them |
| OpenRouter | Yes, with per-model detail | Pay-as-you-go; no subscription percentage |

---
## FAQ

**Does TokMeter store my credentials on a server?**

TokMeter does not operate a credential-storage server. Keys entered in TokMeter remain in its owner-only local configuration, while supported existing sign-ins are read locally.

**Why do Anthropic and OpenAI API costs need Admin API keys? Can I use a regular project key?**

Their account or organisation usage data requires the corresponding admin credential. Subscription allowances, Cursor and OpenRouter use their own supported local sources instead.

**Why can't I see a provider in the menu bar?**

TokMeter only shows a provider when it can verify a supported local connection or eligible saved snapshot. A provider or bar you hide stays out of view until you restore it from **Hidden**.

**Does spend projection work for API usage?**

Spend projection is focused on subscription allowance windows, where usage resets on a known schedule. API or extra-usage spending remains a money total rather than a universal allowance percentage.

**Does TokMeter show per-run costs for OpenClaw?**

Not exactly. TokMeter shows API or extra usage since you last checked, with provider and model detail where available. Its timeline helps you narrow a change to the relevant part of the hour, even when several things were running at once.

**Is TokMeter open source?**

No. TokMeter is a proprietary app distributed via GitHub Releases.

---
## System Requirements

- **macOS:** 13.0 Ventura or later — Apple Silicon
- Internet connection for provider usage polling

---

## Feature Requests

**Missing a tool, found an issue, or have an idea?** [Tell me here](https://github.com/Jbsorge/TokMeter-app/issues/new?title=Feedback%20or%20provider%20request%3A%20).

---

## License

TokMeter is proprietary software. All rights reserved. You may not redistribute, reverse-engineer, or modify the application. See [LICENSE](LICENSE) for full terms.

---
## Contact

- 💬 **Missing a tool, found an issue, or have an idea?** [Tell me here](https://github.com/Jbsorge/TokMeter-app/issues/new?title=Feedback%20or%20provider%20request%3A%20).
- 📧 **Everything else:** [hello@tokmeter.app](mailto:hello@tokmeter.app)

---

<div align="center">

Built for developers, builders, and AI power users who like to know exactly where their compute goes.

**[⬇ Download TokMeter](https://github.com/Jbsorge/TokMeter-app/releases/latest)**

</div>
