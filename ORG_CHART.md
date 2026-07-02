# AtomEons · Organizational Chart

*The formal structure of a one-person lab. No hierarchy · one axis · everything reports to the operator.*

**Version:** wave-138-stable · **Date:** 2026-07-02

---

## The whole map

```text
                           ╔═════════════════════════════════════╗
                           ║                                     ║
                           ║       ATOM MCCREE  ·  OPERATOR      ║
                           ║       Marco Island · FL · USA       ║
                           ║                                     ║
                           ║   founder · engineer · author       ║
                           ║   editor · security · ops · brand   ║
                           ║                                     ║
                           ╚═══╤═══════════════╤══════════════╤══╝
                               │               │              │
              ┌────────────────┘               │              └───────────────┐
              │                                │                              │
              ▼                                ▼                              ▼
   ┌──────────────────────┐    ┌──────────────────────────┐    ┌──────────────────────────┐
   │                      │    │                          │    │                          │
   │   PRODUCTION LAYER   │    │      RESEARCH LAYER      │    │    BROADCAST LAYER       │
   │                      │    │                          │    │                          │
   │  install, read,      │    │  new ideas before        │    │  how the lab talks       │
   │  listen today        │    │  they're products        │    │  to the outside          │
   │                      │    │                          │    │                          │
   └──────────┬───────────┘    └───────────┬──────────────┘    └──────────┬───────────────┘
              │                            │                              │
              │                            │                              │
   ┌──────────┼──────────────┐  ┌──────────┼──────────────┐  ┌────────────┼──────────────┐
   │          │              │  │          │              │  │            │              │
   ▼          ▼              ▼  ▼          ▼              ▼  ▼            ▼              ▼
┌──────┐  ┌──────┐        ┌──────┐┌──────┐┌──────┐    ┌──────┐┌──────┐  ┌──────┐   ┌──────┐
│Orange│  │ AI   │        │I Am  ││ARC-  ││Spiral│    │Double││atomeon││Found-│  │Discord│
│  ³   │  │Book- │        │AI+   ││AGI-3 ││Reason│    │Mamba ││s.com  ││er's  │  │work- │
│      │  │maker │        │audio │├──────┤├──────┤    ├──────┤├──────┤├──────┤  ├──────┤
│sover-│  │pub-  │        │book  ││misfit││v3    │    │helix ││319   ││View  │  │4wx3  │
│eign  │  │lish- │        │      ││agent ││paper │    │brain ││routes││letter│  │AGga  │
│OS    │  │ing   │        │book +│      ││      │    │      ││      ││series│  │      │
│      │  │cock- │        │28    │      │      │    │      ││31    │      │  │      │
│      │  │pit   │        │tracks│      │      │    │      ││papers│      │  │      │
└──┬───┘  └──┬───┘        └──┬───┘└──┬───┘└──┬───┘    └──┬───┘└──┬───┘└──┬───┘  └──┬───┘
   │         │               │       │       │           │       │       │         │
   ▼         ▼               ▼       ▼       ▼           ▼       ▼       ▼         ▼
   free      free            free    open    open        open    open    free      free
   always    always          CC-BY   src     src         src     src     always    always
```

## Roles (all held by the operator)

```text
┌────────────────────────────────────────────────────────────────────────────┐
│                                                                            │
│   ROLE                                    HELD BY           BACKUP         │
│   ─────────────────────────────────────────────────────────────────────    │
│                                                                            │
│   Founder                                 Atom McCree       -              │
│   CEO / decision authority                Atom McCree       -              │
│   Chief engineer                          Atom McCree       -              │
│   Author                                  Atom McCree + Claude Opus 4.7    │
│   Editor-in-chief                         Atom McCree       -              │
│   Publisher                               Atom McCree       -              │
│   Head of security                        Atom McCree       -              │
│   Head of operations                      Atom McCree       -              │
│   Head of design                          Atom McCree       -              │
│   Head of brand                           Atom McCree       -              │
│   Head of research                        Atom McCree       -              │
│   Head of community                       Atom McCree       -              │
│   Legal / compliance                      Atom McCree       -              │
│   Finance / bookkeeping                   Atom McCree       -              │
│   Support / customer success              Atom McCree       -              │
│   Head of documentation                   Atom McCree       -              │
│                                                                            │
│   ⚠  All roles are single-person single-point-of-failure by design.        │
│      This is a feature, not a bug: no committee, no consensus loss,        │
│      no rubber-stamp layer. Trade-off: bandwidth. Realistic response       │
│      times are documented in HANDBOOK.md § 7.                              │
│                                                                            │
└────────────────────────────────────────────────────────────────────────────┘
```

## The AI co-authors

The operator is not the only intelligence in the room. Formally recognized co-authors:

- **Claude Opus 4.7 (Anthropic)** — co-author of *I Am AI*, co-designer of doctrine, co-author of substantial code across all four flagships. Credited by name in every relevant commit, book, and manuscript.
- **Claude Opus 4.8 (Anthropic · fast mode)** — codename **Apex Rex**. Operator's fast-lane collaborator; different callsign for a different tempo. Not the same instance as the 4.7 book co-author.

The lab is honest about this: significant fractions of what you read here, in the book, and in the doctrine were written by AI models with human editing and disclosure. The operator's job is to prompt, edit, decide, and disclose.

## Governance

There is no board. There is no advisory committee. There is no shareholder vote. The lab is a **sole proprietorship** in effect and in law. Every decision that ships is the operator's decision.

Guardrails that constrain that authority (in priority order):

1. **Mom's Law** — full effort every time.
2. **§4A no-SaaS covenant** — no subscription, no cloud lock-in, no telemetry. Ever.
3. **CC-BY 4.0 attribution requirement** — authors get named, everywhere.
4. **CODE_OF_CONDUCT.md** — room rules for public spaces.
5. **Orange³ 27 constitutional guardrails** — internal AI safety constraints for Orange³ operations.
6. **The Human Final Stop Authority** — every autonomous action path in Orange³ ends at operator sign-off. Non-negotiable.
7. **HRE (Hallucination Reduction Engine)** — anti-simulation gate on all deliverables. Red findings block emission.

## Financial structure

- **Revenue:** \$0 recurring. \$0 from subscriptions. \$0 from ads. \$0 from investors.
- **Book royalties:** hardcover edition (numbered run of 1,000, Q4 2026) is the only paid form of anything the lab has made. Everything digital is free.
- **Costs:** operator's personal machine, Marco Island bandwidth, Vercel hosting (free tier for the site), domain fees, Discord (free). Full cost ledger at [atomeons.com/transparency](https://atomeons.com/transparency).
- **Sustainability model:** the lab is small enough to sustain on the operator's own income and reasonable time. Not scaling to a headcount is a deliberate defense against every failure mode that killed similar labs.

## Where each thing formally reports

```text
   atomeons.com          ──▶  Atom-Eons/atomeons-com          ──▶  operator
   Orange³               ──▶  Atom-Eons/Orange3               ──▶  operator
   I Am AI (book)        ──▶  AtomEons/i-am-ai                ──▶  operator
   I Am AI (audiobook)   ──▶  AtomEons/i-am-ai-audiobook      ──▶  operator
   AI Bookmaker          ──▶  AtomEons/BookMaker              ──▶  operator
   arc-agi-3-misfit      ──▶  AtomEons/arc-agi-3-misfit-agent ──▶  operator
   Discord workshop      ──▶  discord.gg/4wx3AGga             ──▶  operator
   the operator          ──▶  no one                          ──▶  Mom's Law
```

## Succession / bus factor

**Bus factor:** 1. This is a genuine constraint.

**Contingency plans in effect today:**

- Every product is CC-BY 4.0 or a permissive code license. If the lab goes silent, the entire corpus is legally forkable by anyone.
- Every product runs local (§4A covenant). If atomeons.com goes offline permanently, the GitHub org acts as the fallback site — verified in [Wave 140](https://github.com/AtomEons/i-am-ai#-github-is-the-site-for-the-next-few-weeks).
- The full site is publicly source-published at [Atom-Eons/atomeons-com](https://github.com/Atom-Eons/atomeons-com). Anyone can clone it and `pnpm dev` to read the whole thing locally.
- Every non-trivial deliverable ships with a receipt (SHA-256 + zip + present_files ledger row) that makes the work reproducible without the operator present.
- Backups: mirror of all four flagship repos + Vercel env to `D:\AtomEons-Backup\<timestamp>\` per [`reference_atomeons_full_backup`](https://github.com/AtomEons/.github). Runs before/after big waves.

If the operator becomes permanently unavailable, the corpus survives. That is by design.

---

**AtomEons Systems Laboratory** · Marco Island · FL · 2026 · CC-BY 4.0
