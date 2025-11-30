#!/bin/bash
set -euo pipefail

## quickly update ref references when testing changes in kenherring/openedge-actions

cd "../openedge-actions"
OPENEDGE_ACTIONS_REF=$(git log -1 --pretty=format:%H)
cd "../openedge-actions-samples"

for FILE in ./.github/workflows/*.yml; do
    echo "FILE=$FILE"
    sed -i "s|uses: kenherring/openedge-actions/\([a-zA-Z]*\)@.*|uses: kenherring/openedge-actions/\1@${OPENEDGE_ACTIONS_REF}|g" "$FILE"
done
