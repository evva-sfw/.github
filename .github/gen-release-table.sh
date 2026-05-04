#!/bin/bash

# List of repositories in the format "owner/repo"
REPOS=(
    "evva-sfw/abrevva-flutter"
    "evva-sfw/abrevva-capacitor"
    "evva-sfw/abrevva-react-native"
    "evva-sfw/nest-auth-client"
    "evva-sfw/nest-mqtt"
)

# Print Markdown table header
echo "## Release Page"
echo ""
echo "| Repository | Version | Release Date |"
echo "|------------|---------|--------------|"

# Fetch latest release info for each repository
for repo in "${REPOS[@]}"; do
    echo "| [$repo](https://github.com/$repo) | [![GitHub Release](https://img.shields.io/github/v/release/$repo?label=%20)](https://github.com/$repo/releases/latest) | ![GitHub Release Date](https://img.shields.io/github/release-date/$repo?display_date=published_at&label=%20) |"
done
