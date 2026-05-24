#!/bin/bash
# Push johnyfrancis.com to GitHub
# Run this once from Terminal: bash _push-to-github.sh

set -e

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$PROJECT_DIR"

echo "📁 Working in: $PROJECT_DIR"

# Clean up any partial .git from previous attempts
if [ -d ".git" ]; then
  echo "🧹 Removing partial .git directory..."
  rm -rf .git
fi

echo "🔧 Initialising git repo..."
git init
git branch -m main

echo "🔧 Configuring git identity..."
git config user.email "johnyfrancis8@gmail.com"
git config user.name "Johny Francis"

echo "🔗 Adding GitHub remote..."
git remote add origin https://github.com/human-first-tech/johnyfrancis.com.git

echo "📦 Staging files..."
git add .

echo "💾 Committing..."
git commit -m "Initial commit: Astro portfolio site"

echo ""
echo "🚀 Pushing to GitHub..."
echo "   (You may be prompted to sign in to GitHub)"
echo ""
git push -u origin main

echo ""
echo "✅ Done! Your site is now on GitHub:"
echo "   https://github.com/human-first-tech/johnyfrancis.com"
echo ""
echo "Next step: Connect to Vercel at https://vercel.com/new"
echo "  → Import from GitHub → select human-first-tech/johnyfrancis.com"
echo "  → Framework will auto-detect as Astro → Deploy"
