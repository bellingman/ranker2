#!/bin/bash

# This script updates the version number in index.html before committing
# To use it as a git hook, copy it to .git/hooks/pre-commit and make it executable

# Path to index.html file
HTML_FILE="index.html"

# Extract current version from the file
CURRENT_VERSION=$(grep -o '<div class="version">v[0-9]\+\.[0-9]\+\.[0-9]\+</div>' "$HTML_FILE" | grep -o 'v[0-9]\+\.[0-9]\+\.[0-9]\+')

if [ -z "$CURRENT_VERSION" ]; then
    echo "Error: Could not find version number in $HTML_FILE"
    exit 1
fi

echo "Current version: $CURRENT_VERSION"

# Remove the 'v' prefix for arithmetic
VERSION_NUM=${CURRENT_VERSION:1}

# Split version into major, minor, patch
IFS='.' read -r MAJOR MINOR PATCH <<< "$VERSION_NUM"

# Increment patch version
NEW_PATCH=$((PATCH + 1))

# Create new version string
NEW_VERSION="v$MAJOR.$MINOR.$NEW_PATCH"

echo "New version: $NEW_VERSION"

# Update the version in the file
sed -i "" "s/<div class=\"version\">${CURRENT_VERSION}<\/div>/<div class=\"version\">${NEW_VERSION}<\/div>/" "$HTML_FILE"

# Add the modified file to the commit
git add "$HTML_FILE"

echo "Version updated to $NEW_VERSION in $HTML_FILE"
