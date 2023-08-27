#!/bin/sh

# Array of available PHP versions
php_versions=("lsphp74" "lsphp80" "lsphp82")  # Update with your available versions

# Display menu of PHP versions
echo "Select the PHP version you want to set as default:"
for ((i=0; i<${#php_versions[@]}; i++)); do
    echo "$i. ${php_versions[i]}"
done

# Get user's choice
read -p "Enter the number corresponding to the PHP version: " choice

# Validate the choice
if (( choice >= 0 && choice < ${#php_versions[@]} )); then
    selected_version="${php_versions[choice]}"
    echo "Changing PHP version to $selected_version..."

    # Remove existing PHP binary symlink
    rm -rf /usr/bin/php

    # Create symbolic link to desired PHP version
    ln -s "/usr/local/$selected_version/bin/php" /usr/bin/php

    echo "PHP version changed to $selected_version."
else
    echo "Invalid choice. Exiting."
fi
