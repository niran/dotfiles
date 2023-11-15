#!/bin/bash

# Fetching the list of installed flatpak packages and skipping the header
installed_packages=$(flatpak list --app --columns=application | tail -n +1)

# Creating the install command
echo "flatpak install -y \\" > flatpak_batch_install.sh

# Appending each package to the install command
while IFS= read -r package
do
    echo "  $package \\" >> flatpak_batch_install.sh
done <<< "$installed_packages"

# Removing the trailing backslash from the last line of the install command
sed -i '$ s/\\$//' flatpak_batch_install.sh

# Making the script executable
chmod +x flatpak_batch_install.sh

echo "Installation script 'flatpak_batch_install.sh' has been created."
