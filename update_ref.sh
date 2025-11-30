#!/bin/bash
set -euo pipefail

## quickly update action references when testing changes in kenherring/openedge-actions

OPENEDGE_ACTIONS_REF=${1:-}
if [ -z "$OPENEDGE_ACTIONS_REF" ]; then
    cd "../openedge-actions"
    OPENEDGE_ACTIONS_REF=$(git log -1 --pretty=format:%H)
    cd "../openedge-actions-samples"
fi

for FILE in ./.github/workflows/*.yml; do
    echo "FILE=$FILE"
    sed -i "s|uses: kenherring/openedge-actions/\([a-zA-Z]*\)@.*|uses: kenherring/openedge-actions/\1@${OPENEDGE_ACTIONS_REF}|g" "$FILE"
done
