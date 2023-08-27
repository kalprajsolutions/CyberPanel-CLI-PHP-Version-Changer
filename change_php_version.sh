#!/bin/sh

# List of available PHP versions
php_versions="lsphp74 lsphp80 lsphp82"  # Update with your available versions

# Display menu of PHP versions
echo "Select the PHP version you want to set as default:"
i=0
for php_version in $php_versions; do
    echo "$i. $php_version"
    i=$((i + 1))
done

# Get user's choice
read -p "Enter the number corresponding to the PHP version: " choice

# Validate the choice
if [ "$choice" -ge 0 ] && [ "$choice" -lt $i ]; then
    selected_version=$(echo $php_versions | cut -d " " -f $(($choice + 1)))
    echo "Changing PHP version to $selected_version..."

    # Remove existing PHP binary symlink if it exists
    if [ -L "/usr/bin/php" ]; then
        rm -rf /usr/bin/php
    fi

    # Create symbolic link to desired PHP version
    ln -s "/usr/local/lsws/$selected_version/bin/php" /usr/bin/php

    echo "PHP version changed to $selected_version."
else
    echo "Invalid choice. Exiting."
fi
