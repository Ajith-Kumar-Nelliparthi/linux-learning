#!/bin/bash

OUTPUT_FILE="index.html"

cat <<EOF > "$OUTPUT_FILE"
<!DOCTYPE html>
<html>
<head>
	<title>Simple Page</title>
</head>
<body>
	<h1>Welcome to my page</h1>
	<p>This html file was created by a bash script using a here doc.</p>
</body>
</html>
EOF

echo "html file created: $OUTPUT_FILE"
