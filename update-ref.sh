#!/bin/bash
set -euo pipefail

cd "../openedge-actions"
OPENEDGE_ACTIONS_REF=$(git log -1 --pretty=format:%H)
cd "../openedge-actions-samples"

sed -i "s|uses: kenherring/openedge-actions/run@.*|uses: kenherring/openedge-actions/run@${OPENEDGE_ACTIONS_REF}|g" .github/workflows/*.yml
