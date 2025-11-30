# Quick Start Guide

Get your portfolio website up and running in 5 minutes!

## Step 1: Install Quarto

### macOS
```bash
brew install quarto
```

### Linux (Ubuntu/Debian)
```bash
wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.4.554/quarto-1.4.554-linux-amd64.deb
sudo dpkg -i quarto-1.4.554-linux-amd64.deb
```

### Windows
Download installer from: https://quarto.org/docs/get-started/

## Step 2: Customize Your Site

### Essential Changes

1. **Edit `_quarto.yml`**
   ```yaml
   website:
     title: "Your Name - Portfolio"  # Change this
   
   navbar:
     right:
       - icon: github
         href: https://github.com/YOUR_USERNAME  # Update
       - icon: linkedin
         href: https://linkedin.com/in/YOUR_PROFILE  # Update
       - icon: envelope
         href: mailto:YOUR_EMAIL@example.com  # Update
   ```

2. **Update `about/index.qmd`**
   - Add your name, background, and experience
   - Update skills and technologies
   - Add your contact information

3. **Customize `index.qmd`**
   - Edit hero title and subtitle
   - Update featured projects
   - Modify skill descriptions

## Step 3: Preview Locally

```bash
cd portfolio-site
quarto preview
```

Visit `http://localhost:4200` to see your site!

## Step 4: Deploy to GitHub Pages

### Quick Deploy

1. **Create GitHub repository**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/YOUR_USERNAME/portfolio-site.git
   git push -u origin main
   ```

2. **Enable GitHub Pages**
   - Go to repository Settings → Pages
   - Source: Select "GitHub Actions"
   - The site will automatically deploy on push to main

3. **Access your site**
   - Your site will be live at: `https://YOUR_USERNAME.github.io/portfolio-site`

## Step 5: Add Content

### Create a Blog Post

```bash
# Create new post file
touch posts/my-first-post.qmd
```

Add frontmatter and content:
```yaml
---
title: "My First Post"
description: "Getting started with my portfolio"
date: "2024-11-30"
categories: [Tutorial, Data Science]
---

## Hello World

Your content here...
```

### Create a Project Page

```bash
# Create new project file
touch projects/my-project.qmd
```

Add project details with frontmatter similar to blog posts.

## Common Workflows

### Local Development
```bash
# Preview site (auto-reload on changes)
quarto preview

# Render site
quarto render

# Clean build artifacts
quarto clean
```

### Publishing Changes
```bash
git add .
git commit -m "Update content"
git push
# Site automatically rebuilds via GitHub Actions
```

## Customization Tips

### Change Colors
Edit `assets/css/styles.css`:
```css
:root {
  --accent-blue: #YOUR_COLOR;
  --accent-teal: #YOUR_COLOR;
}
```

### Add Google Analytics
In `_quarto.yml`:
```yaml
website:
  google-analytics: "G-XXXXXXXXXX"
```

### Custom Domain
1. Add `CNAME` file with your domain
2. Configure DNS with your provider
3. Update `site-url` in `_quarto.yml`
