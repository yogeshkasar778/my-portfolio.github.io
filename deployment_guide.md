# Portfolio Deployment Guide

This guide will help you publish your portfolio to the internet using **GitHub Pages**.

## Prerequisites
- A GitHub account ([Sign up here](https://github.com/join))
- Git installed on your computer

## Step 1: Initialize Git Repository
Open your terminal in this folder (`e:\Portfolio\portfolio_generator_main`) and run:
```powershell
git init
git add .
git commit -m "Initial portfolio commit"
```

## Step 2: Create a GitHub Repository
1.  Go to [github.com/new](https://github.com/new).
2.  Name your repository (e.g., `my-portfolio`).
3.  Choose **Public**.
4.  Click **Create repository**.

## Step 3: Link and Push
Copy the commands shown on GitHub under "…or push an existing repository from the command line". They will look like this:
```powershell
git remote add origin https://github.com/YOUR_USERNAME/my-portfolio.git
git branch -M main
git push -u origin main
```
Run these commands in your terminal.

## Step 4: Enable GitHub Pages
1.  Go to your repository settings on GitHub.
2.  Click **Pages** in the left sidebar.
3.  Under **Build and deployment** > **Source**, select **Deploy from a branch**.
4.  Under **Branch**, select `main` and `/ (root)`.
5.  Click **Save**.

Your site will be live at `https://YOUR_USERNAME.github.io/my-portfolio/`.

## Step 5: Update Base URL
Once your site is live:
1.  Open `portfolio.json`.
2.  Change `"base_url"` to your new GitHub Pages URL (e.g., `https://yogeshkasar.github.io/my-portfolio`).
3.  Run the `publish.ps1` script to update and republish.

## How to Update Your Site
Whenever you make changes to `portfolio.json` or your templates:
1.  Run the `publish.ps1` script:
    ```powershell
    .\publish.ps1
    ```
    This will regenerate the HTML, commit changes, and push to GitHub.
