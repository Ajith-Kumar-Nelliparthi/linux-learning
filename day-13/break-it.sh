#!/usr/bin/env bash
set -euo pipefail

echo 'echo "deploy ok"' > deploy.sh
chmod 755 deploy.sh
./deploy.sh

mkdir -p reports
touch reports/q1.txt
chmod 700 reports
cat reports/q1.txt && echo "read q1.txt"

stat -c '%a %n' deploy.sh
