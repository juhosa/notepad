#! /bin/bash

timestamp=$(date "+%Y-%m-%d %H:%M:%S")
tmp_file=/tmp/notepad_tmp_file.txt
tmp_file2=/tmp/notepad_tmp_file2.txt
datadirectory=~/.notepad/

# touch, in case the file doesn't exist
notepad_file="$datadirectory"/data.txt
touch "$notepad_file"
touch "$tmp_file"
touch "$tmp_file2"

cat > "$tmp_file" <<EOL
$timestamp
-------------------
NOTE HERE

EOL


cat "$tmp_file" "$notepad_file" >> "$tmp_file2"
mv "$tmp_file2" "$notepad_file"
rm "$tmp_file"

nvim "$notepad_file"


