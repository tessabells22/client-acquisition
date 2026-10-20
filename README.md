# Prospect Desk

A daily outreach desk for finding VA clients and full-time roles without waiting for job posts. It follows one loop: **Find → Research → Personalize → Message → Follow up**, then look back at what worked.

## What it does

- **Today**: your daily target for new prospects, follow-ups that are due, replies waiting on you, prospects ready to message, and a 14-day outreach streak.
- **Find**: one-click searches per niche on LinkedIn, Facebook groups and posts, Threads, Instagram hashtags and Google, plus job-board searches (LinkedIn Jobs, OnlineJobs.ph, Upwork, We Work Remotely) for full-time roles.
- **Prospect sheet**: note what you noticed about their business and the problem you can solve, then write the message. You can fill a template, or use "Draft with Claude" when it runs as a claude.ai artifact. A checker flags messages that run long, skip their name, open with you, or list every service. "Mark as sent" logs the message and sets the follow-up date (4 days by default). After one follow-up you get a week, then a "Move on" button.
- **Look back**: messages and replies per week, reply rate by niche and by channel, why prospects closed, and a recent activity log.
- **Setup**: your pitch, proof line, portfolio, daily target, follow-up timing, and niches (keywords, hashtags, problems to look for). Exports a CSV or a JSON backup, and imports a backup.

## Where data lives

| Where it runs | Storage | Claude drafting |
| --- | --- | --- |
| claude.ai artifact | The artifact's private database (only you can read or write it) | Yes, on your Claude account |
| Anywhere else (Vercel, local file) | This browser's `localStorage`. Export backups. | No, templates only |

## Files

- `prospect-desk.html`: the whole app (HTML, CSS, JS). It is written as an artifact page body, so it has no `<html>`/`<head>` wrapper.
- `scripts/build.sh`: wraps it into a full document at `public/index.html`.
- `vercel.json`: runs the build and serves `public/` on Vercel.

## Run locally

```sh
sh scripts/build.sh
open public/index.html   # or serve public/ with any static server
```
