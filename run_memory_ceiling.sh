#!/usr/bin/env bash
# Run the benchmark inside a systemd scope, so that all the solver processes together stay under a memory ceiling:
# above MemoryHigh they are throttled, above MemoryMax the OOM killer kills the biggest one (reported as a crash), and
# they never swap. Arguments are passed to run.py, e.g. ./run_memory_ceiling.sh after (runs ./z3-after) or
# ./run_memory_ceiling.sh after --jobs 3.
set -euo pipefail
cd "$(dirname "$0")"
exec systemd-run --user --scope -q -p MemoryHigh=6G -p MemoryMax=8G -p MemorySwapMax=0 python3 run.py "$@"
