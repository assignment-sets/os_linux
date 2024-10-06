# 1
list_file=$1

# Shift the arguments so that $@ contains only the files to search
shift

# Loop through each word in the list file
while read -r word; do
    echo "Searching for word: '$word'"
    
    # Loop through the remaining files
    for file in "$@"; do
        # Check if the word is in the file
        if grep -qw "$word" "$file"; then
            echo "  Found in: $file"
        else
            echo "  Not found in: $file"
        fi
    done

done < "$list_file"

# 2
for file in "$@"; do
    if [ -f "$file" ]; then
        # Use sed to delete all lines containing the word "UNIX" and overwrite the file
        sed -i '/UNIX/d' "$file"
        echo "Processed file: $file"
    else
        echo "Error: $file not found."
    fi
done

# 3
user_info=$(grep "^$1:" /etc/passwd)

# Check if the user was found
if [ -z "$user_info" ]; then
    echo "User '$1' not found."
    exit 1
fi

# Split the user_info into fields
IFS=":" read -r login_name x uid gid full_name home_dir shell <<< "$user_info"

# Display the user information in a friendly format
echo "User Information for '$login_name':"
echo "-----------------------------------"
echo "Full Name:     $full_name"
echo "User ID (UID): $uid"
echo "Group ID (GID): $gid"
echo "Home Directory: $home_dir"
echo "Default Shell: $shell"

# 4
file_info=$(ls -l "$1")

# Extract file permissions, links, owner, group, size, and other details from the ls -l output
permissions=$(echo "$file_info" | awk '{print $1}')
links=$(echo "$file_info" | awk '{print $2}')
owner=$(echo "$file_info" | awk '{print $3}')
group=$(echo "$file_info" | awk '{print $4}')
size=$(echo "$file_info" | awk '{print $5}')
modification_date=$(echo "$file_info" | awk '{print $6, $7, $8}')
filename=$(echo "$file_info" | awk '{print $9}')

# Display the information in a readable format
echo "File Information for '$1':"
echo "-----------------------------------"
echo "Permissions:       $permissions"
echo "Number of Links:   $links"
echo "Owner:             $owner"
echo "Group:             $group"
echo "File Size:         $size bytes"
echo "Last Modified:     $modification_date"
echo "Filename:          $filename"