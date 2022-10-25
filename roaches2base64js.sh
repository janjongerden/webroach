#!/bin/bash
# Convert all roach images to their base64 representation and output a javascript
# snippet with each roach/direction combo as a const
set -e

cd roach_images/

for file in *; do
    b64=$(base64 "$file")
    echo "const ${file:0:8} = \`data:image/png;base64,$b64\`;"
done
