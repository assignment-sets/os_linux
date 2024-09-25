# q1
#!/bin/bash

# Check if a directory is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

dir=$1

# Validate the directory
if [ ! -d "$dir" ]; then
    echo "Error: $dir is not a directory."
    exit 1
fi

# Find files larger than 100 bytes, sort them by size, and print results
find "$dir" -type f -size +100c -exec ls -lh {} + | awk '{print $9, $5}' | sort -hr -k2 | tee >(wc -l)

# q2
#!/bin/bash

# Initialize total size
total_size=0

# List non-directory files and calculate total size
for file in *; do
    if [ -f "$file" ]; then
        size=$(stat -c%s "$file")
        echo "$file"
        total_size=$((total_size + size))
    fi
done

# Print the total size
echo "Total size of non-directory files: $total_size bytes"

#q3
#!/bin/bash

# List files starting with a vowel
for file in [aeiou]*; do
    if [ -f "$file" ]; then
        echo "$file"
    fi
done
