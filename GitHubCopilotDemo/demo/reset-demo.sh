#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
starter_ref="demo-starter"
preserved_ps1="demo/reset-demo.ps1"
preserved_sh="demo/reset-demo.sh"
force=false

if [[ "${1:-}" == "--force" ]]; then
    force=true
elif [[ $# -gt 0 ]]; then
    echo "Usage: $0 [--force]" >&2
    exit 2
fi

cd "$repo_root"

if ! git rev-parse --verify "${starter_ref}^{commit}" >/dev/null 2>&1; then
    echo "Git reference '$starter_ref' was not found." >&2
    exit 1
fi

if [[ "$force" != true ]]; then
    echo "This resets tracked files to '$starter_ref' and deletes untracked files."
    echo "The reset scripts themselves are preserved."
    git status --short --untracked-files=all
    read -r -p "Type RESET to continue: " confirmation

    if [[ "$confirmation" != "RESET" ]]; then
        echo "Reset cancelled."
        exit 0
    fi
fi

git restore --source="$starter_ref" --staged --worktree -- . \
    ":(exclude)$preserved_ps1" \
    ":(exclude)$preserved_sh"
git clean -fd -e "$preserved_ps1" -e "$preserved_sh"
dotnet build GitHubCopilotDemo.sln

echo "Demo reset to '$starter_ref'."