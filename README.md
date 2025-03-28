# 🟢 Auto Slack Presence with GitHub Actions

Automatically set your Slack presence to **active** at 8:00 AM and **away** at 5:00 PM — no need to keep your PC running.

## 🚀 How It Works

This GitHub Action runs on a schedule and hits the Slack Web API to toggle your presence.

## 🔧 Setup Instructions

1. **Fork this repo**
2. Go to your repo → **Settings > Secrets and variables > Actions**
3. Add a new secret:
   - Name: `SLACK_TOKEN`
   - Value: Your Slack OAuth token (starts with `xoxp-`)
4. Done! 🎉

## 🛠 Customize Timezones

Modify the `cron` entries in `.github/workflows/slack-presence.yml` to match your local time (currently set for Sri Lanka UTC+5:30).

## 🧠 Advanced

Want to add a custom emoji/status message? PRs welcome!
