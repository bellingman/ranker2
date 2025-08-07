# Git Version Hook Setup

This document explains how to setup automatic version incrementing for the Ranker 2 app when committing to Git.

## Overview

The `update-version.sh` script will automatically increment the version number displayed at the bottom of the app each time you commit changes to Git. It follows semantic versioning with the format `v[major].[minor].[patch]`.

## Setup Instructions

1. Make the update script executable:

```bash
chmod +x update-version.sh
```

2. Set up the Git pre-commit hook:

```bash
# Create the pre-commit hook
mkdir -p .git/hooks
cp update-version.sh .git/hooks/pre-commit

# Make sure it's executable
chmod +x .git/hooks/pre-commit
```

3. Test that it works:

```bash
# Make some changes
echo "test" > test.txt

# Add the changes
git add test.txt

# Commit (this should trigger the version update)
git commit -m "Test version increment"
```

4. Verify the version was incremented in `index.html`.

## Manual Version Updates

For manual control of version numbers (for major or minor releases), edit the version in `index.html` directly before committing:

- Increment major version for breaking changes: `v2.0.0`
- Increment minor version for new features: `v1.1.0`
- Patch version automatically increments with each commit: `v1.0.1`

## Troubleshooting

- If the script doesn't seem to run, verify the pre-commit hook is executable (`ls -la .git/hooks/pre-commit`)
- Make sure you're running Git commands from the root of the repository
- The script relies on `grep` and `sed` which should be available in most Unix-like environments

## Notes for Windows Users

If you're on Windows and using Git Bash, the same instructions should work. If using standard Windows command prompt or PowerShell, consider using WSL or Git Bash for hook execution.
