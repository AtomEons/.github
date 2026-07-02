# Follow-up · install the LIVE-stats cron

The `gh` CLI OAuth used to create this repo lacks the `workflow` scope, so it can't push files under `.github/workflows/`. To activate the auto-refresh:

**Option A — via GitHub UI (recommended, 30 seconds)**

1. Visit [`github.com/AtomEons/.github`](https://github.com/AtomEons/.github)
2. Click **Add file → Create new file**
3. Filename: `.github/workflows/update-profile-stats.yml`
4. Paste the YAML below.
5. Commit to `main`.
6. Go to the **Actions** tab and run "Refresh LIVE stats" once manually to verify.

**Option B — from a local shell with workflow scope**

```bash
gh auth refresh -s workflow
# then commit the yml normally
```

## The workflow YAML

```yaml
name: Refresh LIVE stats

on:
  schedule:
    - cron: "17 */6 * * *"
  workflow_dispatch:
  push:
    branches: [main]
    paths:
      - ".github/workflows/update-profile-stats.yml"
      - ".github/scripts/update-stats.sh"

permissions:
  contents: write

jobs:
  refresh:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Gather live signal + rewrite STATS
        env:
          GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: bash .github/scripts/update-stats.sh
      - name: Commit + push if changed
        run: |
          set -euo pipefail
          git config user.name "atomeons-bot"
          git config user.email "bot@atomeons.com"
          if git diff --quiet -- profile/README.md; then
            echo "no changes"
            exit 0
          fi
          git add profile/README.md
          git commit -m "chore: refresh LIVE stats block [skip ci]"
          git push origin HEAD
```

The rewrite script is already in this repo at [`.github/scripts/update-stats.sh`](.github/scripts/update-stats.sh).

## What it does

Every 6 hours (and on manual dispatch), it:
- reads the latest `wave-*` tag from `atomeons-com`
- reads the latest tag from `i-am-ai`
- counts audio tracks in `i-am-ai-audiobook`
- reads the latest release tag of `Orange3`
- rewrites everything between `<!--START:STATS-->` and `<!--END:STATS-->` in [`profile/README.md`](profile/README.md)
- commits with `[skip ci]` so it doesn't recurse

Novel property: turns the org homepage into a self-updating status board without any external hosting.
