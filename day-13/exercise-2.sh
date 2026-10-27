#!/bin/bash
set -euo pipefail

work="$(mktemp -d)"
cd "$work"
mkdir -p site/uploads
touch site/index.html site/uploads/a.txt "site/uploads/my file.txt"
chmod 666 site/uploads/a.txt "site/uploads/my file.txt"

echo "Before: "
find site -type f -perm -o+w -print0 | sort -z | while IFS= read -r -d '' f; do
	echo " world-writeable: $f"
done

find site -type f -perm -o+w -exec chmod o-w {} +

echo "After: $(find site -type f -perm -o+w | wc -l) world-writeable file(s)"
stat -c '%a %n' site/uploads/a.txt "site/uploads/my file.txt"

cd / && rm -rf -- "$work"
