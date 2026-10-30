#!/bin/bash
set -euo pipefail

work="$(mktemp -d)"
cd "$work"

declare -A expected=(
	[app/bin]=755
	[app/conf]=750
	[app/conf/app.env]=640
	[app/data]=700
	[app/bin/run.sh]=750
)

install -d -m 755 app/bin
install -d -m 750 app/conf
install -d -m 700 app/data

