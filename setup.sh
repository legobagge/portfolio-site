#!/bin/bash

# Portfolio Site Setup Script
# This script helps you quickly customize your portfolio

set -e

echo "=================================="
echo "Portfolio Site Setup Wizard"
echo "=================================="
echo ""

# Function to replace placeholder text
replace_placeholder() {
    local file=$1
    local old=$2
    local new=$3
    
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        sed -i '' "s|$old|$new|g" "$file"
    else
        # Linux
        sed -i "s|$old|$new|g" "$file"
    fi
}

# Get user information
echo "Let's personalize your portfolio!"
echo ""

read -p "Your full name: " FULL_NAME
read -p "Your GitHub username: " GITHUB_USER
read -p "Your LinkedIn profile (username only): " LINKEDIN_USER
read -p "Your email address: " EMAIL
read -p "Short bio/tagline: " BIO

echo ""
echo "Updating files with your information..."

# Update _quarto.yml
replace_placeholder "_quarto.yml" "yourusername" "$GITHUB_USER"
replace_placeholder "_quarto.yml" "yourprofile" "$LINKEDIN_USER"
replace_placeholder "_quarto.yml" "your.email@example.com" "$EMAIL"
replace_placeholder "_quarto.yml" "Your Name" "$FULL_NAME"

# Update about page
replace_placeholder "about/index.qmd" "[Your Name]" "$FULL_NAME"
replace_placeholder "about/index.qmd" "your.email@example.com" "$EMAIL"
replace_placeholder "about/index.qmd" "yourusername" "$GITHUB_USER"
replace_placeholder "about/index.qmd" "yourprofile" "$LINKEDIN_USER"

# Update index page if it has author info
find posts -name "*.qmd" -exec sed -i'' -e "s/Your Name/$FULL_NAME/g" {} \;

# Update README
replace_placeholder "README.md" "yourusername" "$GITHUB_USER"

echo "✓ Files updated successfully!"
echo ""

# Initialize git if not already initialized
if [ ! -d .git ]; then
    echo "Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit: Portfolio setup"
    echo "✓ Git repository initialized"
    echo ""
fi

# Offer to create GitHub repository
echo "=================================="
echo "Next Steps:"
echo "=================================="
echo ""
echo "1. Create a new repository on GitHub:"
echo "   https://github.com/new"
echo "   Repository name: portfolio-site"
echo "   (Keep it public for GitHub Pages)"
echo ""
echo "2. Connect your local repository:"
echo "   git remote add origin https://github.com/$GITHUB_USER/portfolio-site.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Go to repository Settings → Pages"
echo "   - Source: Select 'GitHub Actions'"
echo "   - Your site will be live at: https://$GITHUB_USER.github.io/portfolio-site"
echo ""
echo "4. Preview locally before pushing:"
echo "   quarto preview"
echo ""
echo "=================================="
echo "Setup Complete! 🎉"
echo "=================================="
