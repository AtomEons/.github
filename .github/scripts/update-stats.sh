#!/usr/bin/env bash
# Refresh the LIVE stats block in profile/README.md every 6 hours.
# Rewrites everything between <!--START:STATS--> and <!--END:STATS-->.

set -euo pipefail

WAVE=$(gh api repos/Atom-Eons/atomeons-com/tags --paginate 2>/dev/null | jq -r 'first(.[] | select(.name | startswith("wave-")) | .name) // "wave-138-stable"')
I_AM_AI_TAG=$(gh api repos/AtomEons/i-am-ai/tags --paginate 2>/dev/null | jq -r 'first(.[] | .name) // "wave-138-stable"')
AUDIOBOOK_TRACKS=$(gh api repos/AtomEons/i-am-ai-audiobook/contents/audio 2>/dev/null | jq 'length' || echo "28")
ORANGE3_RELEASE=$(gh api repos/Atom-Eons/Orange3/releases/latest 2>/dev/null | jq -r '.tag_name' || echo "unreleased")
UPDATED_AT=$(date -u +"%Y-%m-%dT%H:%MZ")

# Build the replacement block in a temp file (keeps quoting sane).
TMP=$(mktemp)
cat > "$TMP" <<EOF
<!--START:STATS-->
\`\`\`
\$ curl -s atomeons.com/api/live | jq
{
  "operator":     "Atom McCree",
  "location":     "Marco Island · FL",
  "wave":         "$WAVE",
  "orange3":      "$ORANGE3_RELEASE",
  "i_am_ai_tag":  "$I_AM_AI_TAG",
  "audiobook":    "$AUDIOBOOK_TRACKS tracks · Eleven Labs · Opus voice",
  "covenant":     "§4A no-SaaS · free always",
  "vc":           null,
  "employees":    null,
  "investors":    null,
  "moms_law":     "give full effort every time",
  "last_updated": "$UPDATED_AT"
}
\`\`\`
*(auto-refreshed every 6 hours by [update-profile-stats.yml](.github/workflows/update-profile-stats.yml))*
<!--END:STATS-->
EOF

# Replace the block between markers.
awk -v blockfile="$TMP" '
  BEGIN {
    while ((getline line < blockfile) > 0) block = block line "\n"
    close(blockfile)
    sub(/\n$/, "", block)
  }
  /<!--START:STATS-->/ {
    print block
    skip = 1
    next
  }
  /<!--END:STATS-->/ {
    if (skip) { skip = 0; next }
  }
  { if (!skip) print }
' profile/README.md > profile/README.new
mv profile/README.new profile/README.md
rm -f "$TMP"
echo "STATS block rewritten"
