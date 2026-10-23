#!/bin/bash
set -euo pipefail

REPO_DIR="/workspace/vueuse"

if [ ! -d "$REPO_DIR" ]; then
    echo "Repository directory not found: $REPO_DIR"
    exit 1
fi

cd "$REPO_DIR"

echo "Applying oracle patch..."
if [ -f /solution/fix.patch ]; then
    # A "Binary files ... differ" hunk has no data, and git apply then rejects
    # the whole patch. Exclude only those files (images in the documentation),
    # as the multi-swe-bench fix-run.sh scripts also do.
    EXCLUDES=()
    while IFS= read -r path; do
        EXCLUDES+=("--exclude=$path")
    done < <(awk '/^diff --git /{p=$4; sub(/^b\//, "", p)} /^Binary files .* differ$/{print p}' /solution/fix.patch)
    git apply --whitespace=nowarn ${EXCLUDES[@]+"${EXCLUDES[@]}"} /solution/fix.patch
    echo "Oracle patch applied."
    
    # Commit the changes to maintain clean git state
    # This is crucial for tests that depend on git status (e.g., listChangedFiles)
    git add -A
    git -c user.name="Harbor Oracle" -c user.email="oracle@harbor.dev" commit -m "Apply oracle fix patch" --no-verify || true
    echo "Changes committed to git."
else
    echo "Missing /solution/fix.patch"
    exit 1
fi
