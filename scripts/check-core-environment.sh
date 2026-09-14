#!/usr/bin/env bash
# Verify the public BS0030 "core" Codespace environment.
# This script checks infrastructure only; it does not run weekly lab tests.
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

# The Node devcontainer feature installs nvm in a shared location. Its shell
# initialization is not guaranteed in non-interactive lifecycle commands.
NVM_SCRIPT="${NVM_DIR:-/usr/local/share/nvm}/nvm.sh"
if [[ -f "$NVM_SCRIPT" ]]; then
    # shellcheck disable=SC1090
    source "$NVM_SCRIPT"
fi

for tool in git python3 node npm gcc g++ clang clang++ sqlite3; do
    if ! command -v "$tool" >/dev/null 2>&1; then
        printf 'MISSING: %s\n' "$tool" >&2
        exit 1
    fi
done

python_version="$(python3 -c 'import platform; print(platform.python_version())')"
node_version="$(node -p 'process.versions.node')"

printf 'BS0030 Core Environment\n'
printf 'Git: %s\n' "$(git --version)"
printf 'Python: %s\n' "$python_version"
printf 'Node.js: %s\n' "$node_version"
printf 'npm: %s\n' "$(npm --version)"
printf 'SQLite: %s\n' "$(sqlite3 --version | awk '{print $1}')"
printf '%s\n' "$(gcc --version | head -n 1)"
printf '%s\n' "$(g++ --version | head -n 1)"
printf '%s\n' "$(clang --version | head -n 1)"
printf '%s\n' "$(clang++ --version | head -n 1)"

if [[ "$python_version" != "3.14.7" ]]; then
    printf 'Expected Python 3.14.7; rebuild the core container.\n' >&2
    exit 1
fi

if [[ "$node_version" != "24.20.0" ]]; then
    printf 'Expected Node.js 24.20.0; rebuild the core container.\n' >&2
    exit 1
fi

printf '\nEnvironment ready.\n'
printf 'Week 2: labs/week02/README.md\n'
