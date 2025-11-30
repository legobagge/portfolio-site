# AI & Analytics Portfolio

A professional portfolio website showcasing projects in AI, data engineering, Bayesian modeling, and econometrics. Built with [Quarto](https://quarto.org) and deployed on GitHub Pages.

## 🚀 Features

- **Responsive Design**: Beautiful, mobile-friendly interface with custom styling
- **Blog System**: Write technical posts with code execution and reproducible examples
- **Project Showcase**: Highlight your best work with detailed case studies
- **Dark Theme**: Elegant analytical aesthetic with animated backgrounds
- **Code Highlighting**: Syntax highlighting with copy-to-clipboard functionality
- **SEO Optimized**: Proper meta tags and Open Graph support

## 📁 Project Structure

```
portfolio-site/
├── _quarto.yml           # Main configuration file
├── index.qmd             # Homepage
├── about/
│   └── index.qmd         # About page
├── posts/
│   ├── index.qmd         # Blog listing page
│   └── *.qmd             # Individual blog posts
├── projects/
│   ├── index.qmd         # Projects listing page
│   └── *.qmd             # Individual project pages
├── assets/
│   ├── css/
│   │   └── styles.css    # Custom CSS
│   └── images/           # Images and assets
└── .github/
    └── workflows/
        └── publish.yml   # GitHub Actions workflow
```

## 🛠️ Setup Instructions

### Prerequisites

1. **Install Quarto** (version 1.4 or higher)
   - Download from: https://quarto.org/docs/get-started/
   - Or use package manager:
     ```bash
     # macOS
     brew install quarto
     
     # Ubuntu/Debian
     sudo wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.4.554/quarto-1.4.554-linux-amd64.deb
     sudo dpkg -i quarto-1.4.554-linux-amd64.deb
     ```

2. **Install Python** (optional, for Python code execution)
   ```bash
   pip install jupyter matplotlib pandas numpy scipy
   ```

3. **Install R** (optional, for R code execution)
   ```bash
   # Install R and required packages
   install.packages(c("rmarkdown", "tidyverse", "ggplot2"))
   ```

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/portfolio-site.git
   cd portfolio-site
   ```

2. **Preview the site locally**
   ```bash
   quarto preview
   ```
   
   This will start a local server at `http://localhost:4200`

3. **Render the site**
   ```bash
   quarto render
   ```
   
   The rendered site will be in the `docs/` directory

## 🚢 Deployment to GitHub Pages

### Option 1: Automated Deployment (Recommended)

1. **Create a GitHub repository** and push your code

2. **Enable GitHub Pages**
   - Go to repository Settings → Pages
   - Source: Select "GitHub Actions"

3. **Configure the workflow**
   - The `.github/workflows/publish.yml` file is already configured
   - Push to `main` branch to trigger automatic deployment

4. **Update settings in `_quarto.yml`**
   ```yaml
   website:
     site-url: https://yourusername.github.io/portfolio-site
   ```

### Option 2: Manual Deployment

1. **Render the site**
   ```bash
   quarto render
   ```

2. **Commit and push the docs/ folder**
   ```bash
   git add docs/
   git commit -m "Update site"
   git push
   ```

3. **Configure GitHub Pages**
   - Settings → Pages
   - Source: Deploy from a branch
   - Branch: `main`
   - Folder: `/docs`

## ✏️ Customization Guide

### Update Personal Information

1. **Edit `_quarto.yml`**
   - Change website title, description
   - Update navbar links (GitHub, LinkedIn, email)
   - Modify footer text

2. **Edit `about/index.qmd`**
   - Add your background, experience, education
   - Update skills and technologies
   - Add your contact information

3. **Update `index.qmd`**
   - Customize hero section text
   - Modify featured projects
   - Adjust skill levels

### Change Colors & Styling

Edit `assets/css/styles.css`:

```css
:root {
  --primary-dark: #0a0e27;      /* Main background */
  --accent-blue: #4a9eff;       /* Primary accent */
  --accent-teal: #2dd4bf;       /* Secondary accent */
  --text-primary: #e8eaed;      /* Main text color */
}
```

### Add Blog Posts

Create a new `.qmd` file in the `posts/` directory:

```yaml
---
title: "Your Post Title"
description: "Brief description"
author: "Your Name"
date: "2024-11-30"
categories: [Python, ML, Tutorial]
---

## Your Content Here

Write your post using Markdown and include code blocks:

```python
import numpy as np
print("Hello, World!")
```
```

### Add Projects

Create a new `.qmd` file in the `projects/` directory with similar frontmatter.

## 📊 Writing Technical Content

### Code Execution

Quarto can execute code in multiple languages:

````markdown
```{python}
#| echo: true
#| eval: true
import matplotlib.pyplot as plt
plt.plot([1, 2, 3, 4])
plt.show()
```
````

### Math Equations

Use LaTeX syntax for mathematical expressions:

```markdown
$$
\hat{\beta} = (X^TX)^{-1}X^Ty
$$
```

### Callout Boxes

```markdown
:::{.callout-note}
This is a note callout.
:::

:::{.callout-tip}
This is a tip callout.
:::

:::{.callout-warning}
This is a warning callout.
:::
```

### Code Folding

```yaml
---
format:
  html:
    code-fold: true        # Hide code by default
    code-tools: true       # Add code tools menu
---
```

## 🔧 Advanced Configuration

### Custom Domain

1. Add a `CNAME` file to your repository root:
   ```
   yourdomain.com
   ```

2. Configure DNS settings with your domain provider

3. Update `site-url` in `_quarto.yml`

### Analytics

Add Google Analytics to `_quarto.yml`:

```yaml
website:
  google-analytics: "G-XXXXXXXXXX"
```

### Search

Enable site search:

```yaml
website:
  search:
    location: navbar
    type: overlay
```

## 📚 Resources

- [Quarto Documentation](https://quarto.org/docs/guide/)
- [Quarto Gallery](https://quarto.org/docs/gallery/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Markdown Guide](https://www.markdownguide.org/)

## 🐛 Troubleshooting

### Site not updating after push

- Clear browser cache
- Check GitHub Actions workflow status
- Verify GitHub Pages settings

### Render errors

```bash
# Clean the project
quarto clean

# Try rendering again
quarto render
```

### Code execution errors

- Ensure required packages are installed
- Check kernel/engine configuration in frontmatter
- Review error messages in terminal

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Feel free to fork this repository and customize it for your own portfolio. If you find bugs or have suggestions, please open an issue!

## ⭐ Show Your Support

If you found this template helpful, please give it a star on GitHub!

---

**Built with** [Quarto](https://quarto.org) • **Hosted on** [GitHub Pages](https://pages.github.com)
