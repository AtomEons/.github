# Contributing to AtomEons

Thanks for looking. Here's how the lab actually works with outside contribution — no false modesty, no false openness either.

## Who runs this

**One person.** Atom McCree, Marco Island, FL. No VC, no employees, no engineering team hiding behind a bot. That means merges take real human time, and I can only sustain what I can maintain solo. Please calibrate expectations to that.

## What's in scope for contributions

| Repo | Best contributions | Notes |
|---|---|---|
| [`atomeons-com`](https://github.com/Atom-Eons/atomeons-com) | Typo fixes, broken-link reports, accessibility bugs, factual corrections | Design/copy changes tend to already have a strong point of view — open an issue first |
| [`Orange3`](https://github.com/Atom-Eons/Orange3) | Bug reports with reproduction, security findings ([`SECURITY.md`](https://github.com/Atom-Eons/Orange3/blob/main/SECURITY.md)), adapter contributions, doctrine feedback | Big architecture changes: discussion first, not PR first |
| [`i-am-ai`](https://github.com/AtomEons/i-am-ai) | Typo fixes, translations (CC-BY 4.0), citations for [`CITATION.cff`](https://github.com/AtomEons/i-am-ai/blob/main/CITATION.cff) hall of honor, chapter reactions in Discussions | I don't take rewrite proposals — the manuscript is stable |
| [`i-am-ai-audiobook`](https://github.com/AtomEons/i-am-ai-audiobook) | Metadata fixes, format alternates (FLAC, chapter-marked M4B), transcript improvements | Track content is stable; production notes are open |
| [`BookMaker`](https://github.com/AtomEons/BookMaker) | Pipeline bugs, format exporters, ACX/KDP validators | Feature additions: open an Ideas discussion first |

## The two-tier workflow

**Tier 1 — small stuff, direct PR.** Typos, broken links, dead-link fixes, README nits, LICENSE errata, obvious bugs (< 10 line fix, clear diff). Just open the PR. I'll merge or comment.

**Tier 2 — everything else.** Open an issue or a discussion FIRST, describe the problem, wait for a signal that a PR would be welcome. Skipping this step often results in a PR I can't merge because the direction doesn't fit — that wastes your effort.

## PR checklist

- [ ] Tests still pass (`pnpm test` / `bun test` / repo-specific)
- [ ] Types check clean (`tsc --noEmit` where applicable)
- [ ] No new dependencies without discussion
- [ ] Commit messages describe the *why*, not just the *what*
- [ ] Attribution preserved for anything CC-BY

## What I won't merge (and why)

- **Reformatting-only PRs** — noise > signal, breaks git blame for future readers
- **New features with no linked discussion** — see Tier 2 above
- **Vendor bloat** — new heavy deps for small wins
- **Voice/tone rewrites of the book or site copy** — the point of view is deliberate
- **Coordinated jailbreak / injection material** — off-mission

## Response time

Solo lab. Realistic:

- **Bug + repro:** hours to days.
- **Small typo PR:** hours to a day.
- **Feature PR without prior discussion:** may sit for weeks. Sorry. Open a discussion first.
- **Security report:** see [`SECURITY.md`](https://github.com/Atom-Eons/Orange3/blob/main/SECURITY.md) — 72hr acknowledgment.

If I've gone silent on a good-faith PR for >30 days, ping me publicly. That's a failure I want to hear about.

## License + attribution

- **Docs** (READMEs, this file, chapters, papers): CC-BY 4.0.
- **Code** in each repo: whatever `LICENSE` at repo root says (usually MIT or CC-BY 4.0, sometimes noassertion pending review).
- Contributions inherit the containing repo's license unless you say otherwise in the PR.

## Room rules

See [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md). Argue the work, not the person.

## Get in touch

- **Email:** `a.mccree@gmail.com`
- **X:** [@AtomMccree](https://x.com/AtomMccree)
- **Discord:** [workshop](https://discord.gg/4wx3AGga)
- **Site:** [atomeons.com](https://atomeons.com)

**AtomEons Systems Laboratory** · Marco Island · FL · 2026 · CC-BY 4.0
