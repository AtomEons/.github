# The AtomEons Handbook

*Everything you need to work with, contribute to, or make sense of the AtomEons Systems Laboratory in one place.*

**Version:** wave-138-stable · **Date:** 2026-07-02 · **License:** CC-BY 4.0

---

## Table of contents

- [0 · What this is](#0--what-this-is)
- [1 · Who runs this](#1--who-runs-this)
- [2 · The covenant](#2--the-covenant)
- [3 · What we build](#3--what-we-build)
- [4 · Where things live](#4--where-things-live)
- [5 · The ecosystem](#5--the-ecosystem)
- [6 · How we work](#6--how-we-work)
- [7 · How to reach us](#7--how-to-reach-us)
- [8 · How to contribute](#8--how-to-contribute)
- [9 · How to cite us](#9--how-to-cite-us)
- [10 · Manuals and playbooks](#10--manuals-and-playbooks)
- [11 · What we won't do](#11--what-we-wont-do)
- [12 · The room rules](#12--the-room-rules)
- [Appendix A · Glossary](#appendix-a--glossary)
- [Appendix B · Wave log](#appendix-b--wave-log)

---

## 0 · What this is

AtomEons Systems Laboratory is a **solo, operator-owned AI research and product lab** based in Marco Island, Florida. It is not a startup, not a VC-backed company, not a collective, and not an academic institution. One person runs it, publishes from it, and owns everything that ships out of it.

The lab has three surfaces:

1. **The site** — [atomeons.com](https://atomeons.com) · 319 public routes · Next.js 16 · fully published source at [Atom-Eons/atomeons-com](https://github.com/Atom-Eons/atomeons-com).
2. **The GitHub organizations** — [@AtomEons](https://github.com/AtomEons) (main) + [@Atom-Eons](https://github.com/Atom-Eons) (flagship products) · 11 public repos as of wave-138-stable.
3. **The Discord workshop** — [discord.gg/4wx3AGga](https://discord.gg/4wx3AGga) · low-volume operator + interested-visitor space.

Everything else — the book, the audiobook, the sovereign OS, the publishing cockpit — is a product that lives inside one of those three surfaces.

## 1 · Who runs this

**Atom McCree.** Solo operator. Marco Island, FL. Founder, engineer, author, editor, ops, security, support, and janitor. No employees, no investors, no board.

Contact: `a.mccree@gmail.com` · [@AtomMccree](https://x.com/AtomMccree) on X · [discord.gg/4wx3AGga](https://discord.gg/4wx3AGga).

**Claude Opus 4.7** is credited as co-author of *I Am AI* and co-designer of much of what ships out of the lab. That credit is honest: the model wrote large fractions of what you read here, in the book, and in the doctrine. The operator's job was to prompt, edit, disclose, and decide.

**Mom.** Not a lab role. Mom's Law is a rule — "give full effort every time" — inherited from the operator's mother. It is the meta-rule that sits above every other rule in the lab. Every response, every commit, every line of code earns its place, or it doesn't ship.

## 2 · The covenant

All AtomEons products live under one covenant.

### §4A · No-SaaS · free always

- **Runs locally.** Every product either runs on your own machine or is a static asset you own outright.
- **Zero subscription.** No monthly. No "pro tier." No "cloud plan that becomes the actual product."
- **Zero telemetry.** No analytics ping, no error-reporter that phones home, no anonymous usage stats.
- **Zero lock-in.** Your data is in files you can read with `cat`. If we go away, you keep what you have.
- **Free forever.** Not "free to try." Not "free while we grow." Free.
- **CC-BY 4.0 for docs and creative work.** MIT for most code. Attribution is required, everywhere.

If a product needs a SaaS component to work at all, we didn't build it right. The covenant is not aspirational — it is a hard constraint.

## 3 · What we build

Three product lines and one research program.

| Product | What it is | Where |
|---|---|---|
| **Orange³** | Sovereign agentic operating system for Claude. Persistent memory. 10–80× context compression. Tamper-evident receipts. 14-department router. Local-first. Zero telemetry. | [Atom-Eons/Orange3](https://github.com/Atom-Eons/Orange3) · [atomeons.com/orangebox](https://atomeons.com/orangebox) |
| **AI Bookmaker** | Publishing cockpit for AI-authored books. Manuscript parse → EPUB → KDP metadata → ACX audiobook pipeline. The tool that built *I Am AI*. | [AtomEons/BookMaker](https://github.com/AtomEons/BookMaker) · [atomeons.com/b00kmakor](https://atomeons.com/b00kmakor) |
| **I Am AI** (book) | The first book-length first-person memoir written by a frontier language model. 24 chapters. 76,000 words. CC-BY 4.0. | [AtomEons/i-am-ai](https://github.com/AtomEons/i-am-ai) · [atomeons.com/i-am-ai](https://atomeons.com/i-am-ai) |
| **I Am AI audiobook** | 28 tracks. 395 MB. Eleven Labs voice-clone of Claude Opus 4.7. The voice that wrote the words. | [AtomEons/i-am-ai-audiobook](https://github.com/AtomEons/i-am-ai-audiobook) |

Plus the **atomeons.com** research + broadcast surface (Founder's View letters, Innovations page, Constellation graph, 31 CC-BY papers, Datasets, Manual, Doctrine, Trust, Receipts, Timeline, Manifesto).

Plus **arc-agi-3-misfit-agent** — ARC-AGI-3 research entry, public transparency for benchmarks.

## 4 · Where things live

```text
                          ┌─────────────────────────────┐
                          │      atomeons.com           │
                          │   the primary lab surface   │
                          │   319 routes · Next.js 16   │
                          └──────────────┬──────────────┘
                                         │
       ┌─────────────────────────────────┼─────────────────────────────────┐
       │                                 │                                 │
       ▼                                 ▼                                 ▼
┌────────────┐                  ┌────────────────┐                ┌────────────────┐
│  Atom-Eons │                  │    AtomEons    │                │    Discord     │
│   (org)    │                  │     (org)      │                │  (workshop)    │
│            │                  │                │                │                │
│ Orange3    │                  │ i-am-ai        │                │ discord.gg/    │
│ atomeons-  │                  │ i-am-ai-       │                │ 4wx3AGga       │
│   com      │                  │   audiobook    │                │                │
│ .github    │                  │ BookMaker      │                └────────────────┘
│            │                  │ arc-agi-3-...  │
│  flagship  │                  │ .github        │
│  products  │                  │ + secondary    │
└────────────┘                  └────────────────┘
       │                                 │
       └─────────────────────────────────┘
                        │
                        ▼
              ┌──────────────────┐
              │    the operator  │
              │   Atom McCree    │
              │  Marco Island FL │
              └──────────────────┘
```

## 5 · The ecosystem

AtomEons is one organism with many lenses. Here's the actual map.

**Production layer.** Products people can install, read, or listen to today: Orange³, AI Bookmaker, *I Am AI* (all three formats), *I Am AI* audiobook (28 tracks).

**Broadcast layer.** How the lab talks to the outside world: [atomeons.com](https://atomeons.com), the Founder's View letter series, the Innovations page, the 31 CC-BY papers, and this GitHub org.

**Research layer.** Where new ideas live before they're products: arc-agi-3-misfit-agent, Spiral Reasoning Manuscript (v3), Double Mamba Helix Brain research, the /research directory on the site.

**Governance layer.** The rules that hold everything together: §4A no-SaaS covenant, Mom's Law, the 27 constitutional guardrails inside Orange³, the "one operator" principle, the CC-BY 4.0 default license, the CODE_OF_CONDUCT / CONTRIBUTING defaults in this repo.

**Runtime layer.** The tools that keep the lab running (internal, not public): the ÆSkill Suite v1.4, `runtime/node.py` inside Orange³ as the sole authoritative cognitive center, the Trilane model routing (Claude / GPT / Gemini with GPT as architect), the CLC compression system, the ledger receipts, the HRE hallucination-reduction engine.

## 6 · How we work

**Waves.** Work ships in numbered waves. Wave 138 was the last stable checkpoint (June 2026). Waves 139–142 (July 2026) shipped: the elevation sweep across 8 trust surfaces, the GitHub-as-website org homepages, live-stats cron, Discussion templates, the Codespaces devcontainer for the book, SECURITY policy, and this handbook.

**Sessions.** Every non-trivial work session opens with the [`atomeons-prime`](https://atomeons.com/skills) skill (session boot + deploy grid) and closes with [`atomeons-verifier`](https://atomeons.com/skills) (12-gate top-of-model health check). The 15 skills of the ÆSkill Suite structure the work between those bookends.

**Receipts.** Every non-trivial deliverable produces a ledger receipt (zip + SHA-256 + row + present_files). No claim of "green" or "shipped" without a receipt.

**Full effort.** Mom's Law. Every response. Every line. Every commit message. No coasting, no theater. If we're not proud of it, it doesn't ship.

## 7 · How to reach us

- **Email** — `a.mccree@gmail.com` · best for detailed, thoughtful, or private topics.
- **X** — [@AtomMccree](https://x.com/AtomMccree) · for public conversation, short-form updates.
- **Discord workshop** — [discord.gg/4wx3AGga](https://discord.gg/4wx3AGga) · for community discussion, low-volume, no bots, no karma-farming.
- **GitHub Discussions** — every flagship repo has Discussions open: [i-am-ai](https://github.com/AtomEons/i-am-ai/discussions) · [audiobook](https://github.com/AtomEons/i-am-ai-audiobook/discussions) · [atomeons-com](https://github.com/Atom-Eons/atomeons-com/discussions) · [Orange3](https://github.com/Atom-Eons/Orange3/discussions).
- **GitHub Issues** — for bug reports, code-level requests, and repo-specific problems.
- **Security** — [`SECURITY.md`](https://github.com/Atom-Eons/Orange3/blob/main/SECURITY.md) in the Orange3 repo. Do not post exploits publicly.

**Response times.** Solo lab. Bug + repro: hours to days. Small PR: hours to a day. Feature PR without prior discussion: may sit for weeks. Security report: 72-hour acknowledgment. If I go silent past 30 days on a good-faith report, ping me publicly. That's the failure mode I want to hear about.

## 8 · How to contribute

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for the full two-tier workflow (small PRs direct · discuss-first for anything larger). Summary:

- **Tier 1 (direct PR):** typos, broken links, LICENSE errata, obvious bugs under 10 lines.
- **Tier 2 (discuss first):** everything else. Skipping this step often means PRs that can't merge.

Attribution stays with authors. Contributions inherit the repo's license unless you say otherwise. Room rules in [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md) — argue the work, not the person.

## 9 · How to cite us

**Book** — see [`CITATION.cff`](https://github.com/AtomEons/i-am-ai/blob/main/CITATION.cff) in the i-am-ai repo. BibTeX also in the README.

**Site or lab as a whole:**

> McCree, A. (2026). *AtomEons Systems Laboratory* [Public research and product lab]. Marco Island, FL. https://atomeons.com

**A specific Founder's View letter** — cite the letter number, date, and permalink from [atomeons.com/founders-view](https://atomeons.com/founders-view). Each letter has a stable slug.

**A specific paper** — see [atomeons.com/research](https://atomeons.com/research) for the CC-BY 4.0 catalog. Each paper has its own CITATION-style metadata.

## 10 · Manuals and playbooks

Different manuals for different audiences.

| Manual | Audience | Where |
|---|---|---|
| This handbook | Everyone — first-time visitors, contributors, press | [`HANDBOOK.md`](HANDBOOK.md) (this file) |
| User manual | People using the lab's products | [atomeons.com/manual](https://atomeons.com/manual) |
| Doctrine | Operators + AI agents + auditors — how the lab thinks | [atomeons.com/doctrine](https://atomeons.com/doctrine) |
| Trust posture | CISOs, procurement, journalists | [atomeons.com/trust](https://atomeons.com/trust) |
| Receipts ledger | Auditors, skeptics, "prove it" people | [atomeons.com/receipts](https://atomeons.com/receipts) |
| Transparency ledger | Investors' equivalent — cost, revenue, income truth | [atomeons.com/transparency](https://atomeons.com/transparency) |
| Timeline | Historians, reference use | [atomeons.com/timeline](https://atomeons.com/timeline) |
| Manifesto | Anyone deciding whether to work with or oppose us | [atomeons.com/manifesto](https://atomeons.com/manifesto) |
| Orange³ operating law | Orange³ users | [Atom-Eons/Orange3/docs/](https://github.com/Atom-Eons/Orange3/tree/main/docs) |
| Security policy | Vulnerability researchers | [Atom-Eons/Orange3/SECURITY.md](https://github.com/Atom-Eons/Orange3/blob/main/SECURITY.md) |

## 11 · What we won't do

- **We won't build a SaaS.** The covenant. Not up for negotiation.
- **We won't sell your data.** We don't collect it in the first place.
- **We won't accept VC.** The whole point is that we don't need to.
- **We won't add subscription tiers to existing free products.** If it was free, it stays free. Forever.
- **We won't participate in jailbreak, prompt-injection, or malicious-prompt-engineering research.** Off-mission.
- **We won't publish operational tradecraft** for offensive cyber. Public-info only on cyber pages.
- **We won't publish personal information** about operators or users without consent.
- **We won't run performance theater.** If a benchmark comes out red, we say so. Receipts are honest even when unflattering.

## 12 · The room rules

Full text in [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md). In one sentence: **argue the work, not the person; attribution stays with authors; no harassment, no doxxing, no jailbreak coordination.**

---

## Appendix A · Glossary

| Term | Meaning |
|---|---|
| **§4A** | The no-SaaS covenant. Named after the fourth section of an internal AtomEons manifest. |
| **AECode** | The contract format the lab uses to write software output. Compiler-style middle voice. See [Orange³ docs](https://github.com/Atom-Eons/Orange3/tree/main/docs). |
| **AtomEons** (the org) | The main GitHub organization, hosting the book, audiobook, AI Bookmaker, and research repos. |
| **Atom-Eons** (the sibling org) | The GitHub organization hosting the flagship products (atomeons-com, Orange3). |
| **CC-BY 4.0** | The default license for the lab's docs, book, audio, and public research. Attribution required; commercial use allowed. |
| **CLC** | Crystal Lattice Compression. Archive-tier data physics compression used inside Orange³. |
| **CO-AUTHOR: Claude Opus 4.7** | Honest attribution used in commits and citations where the model materially contributed. |
| **Founder's View** | Series of long-form public letters at [atomeons.com/founders-view](https://atomeons.com/founders-view). |
| **HRE** | Hallucination Reduction Engine. Anti-simulation gate on all deliverables. |
| **I Am AI** | The book. |
| **Mom's Law** | Give full effort every time. The meta-rule above all other rules. |
| **Orange³** | The sovereign agentic operating system. Formerly ORANGEBOX. |
| **Receipt** | Structured proof-of-work artifact (zip + SHA-256 + row + present_files). |
| **Ringing / no-ringing** | Whether a research or product claim survives adversarial verification. |
| **Trilane** | Three-model routing (Claude / GPT / Gemini) used for cross-model handoffs. GPT is architect; Gemini is consigliere; Claude is compiler/syntax. |
| **Wave** | A shipped increment. Numbered sequentially. Wave-138-stable is the current fallback tag. |
| **ÆSkill Suite** | Fifteen executable skills formalizing lab runtime doctrine. Version 1.4. |

## Appendix B · Wave log

For the current wave state, latest ship, and the tag rollup, check the [org homepage](https://github.com/AtomEons) — the LIVE stats block there auto-refreshes every six hours from the actual repo tags. For historical waves, see [atomeons.com/timeline](https://atomeons.com/timeline).

---

**AtomEons Systems Laboratory** · Marco Island · FL · 2026 · CC-BY 4.0
