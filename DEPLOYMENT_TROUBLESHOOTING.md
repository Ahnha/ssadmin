# 🔧 GitHub Pages Deployment Troubleshooting

## ❌ Common Issues & Solutions

### Issue 1: Permission Denied (403 Error)
```
remote: Permission to Ahnha/ssadmin.git denied to github-actions[bot].
fatal: unable to access 'https://github.com/Ahnha/ssadmin.git/': The requested URL returned error: 403
```

**Solution:**
1. **Enable GitHub Pages in repository settings:**
   - Go to your repo: https://github.com/Ahnha/ssadmin
   - Click **Settings** → **Pages**
   - Source: **"GitHub Actions"**
   - Click **Save**

2. **Check repository permissions:**
   - Go to **Settings** → **Actions** → **General**
   - Ensure **"Allow GitHub Actions to create and approve pull requests"** is enabled
   - Scroll down to **"Workflow permissions"**
   - Select **"Read and write permissions"**
   - Check **"Allow GitHub Actions to create and approve pull requests"**

### Issue 2: Branch Not Found
```
fatal: couldn't find remote ref gh-pages
```

**Solution:**
- The `gh-pages` branch will be created automatically by the workflow
- Make sure you're pushing to `main` or `master` branch

### Issue 3: Build Fails
```
Error: The process '/usr/bin/flutter' failed with exit code 1
```

**Solution:**
1. Check Flutter version compatibility
2. Ensure all dependencies are properly specified in `pubspec.yaml`
3. Test locally first: `flutter build web --release`

## 🚀 Alternative Deployment Methods

### Method 1: Manual Deployment
```bash
# Build locally
flutter build web --release

# Create gh-pages branch manually
git checkout --orphan gh-pages
git rm -rf .
cp -r build/web/* .
git add .
git commit -m "Deploy to GitHub Pages"
git push origin gh-pages --force
```

### Method 2: Use Netlify (Free)
1. Go to [netlify.com](https://netlify.com)
2. Drag and drop your `build/web` folder
3. Get instant URL like: `https://your-app.netlify.app`

### Method 3: Use Vercel (Free)
1. Connect your GitHub repo to [vercel.com](https://vercel.com)
2. Automatic deployment on every push
3. Get URL like: `https://your-app.vercel.app`

## 🔧 Repository Settings Checklist

### GitHub Pages Settings:
- [ ] Go to **Settings** → **Pages**
- [ ] Source: **"GitHub Actions"**
- [ ] Save settings

### Actions Settings:
- [ ] Go to **Settings** → **Actions** → **General**
- [ ] **"Allow GitHub Actions to create and approve pull requests"** ✅
- [ ] **"Workflow permissions"** → **"Read and write permissions"** ✅

### Branch Protection (if enabled):
- [ ] Go to **Settings** → **Branches**
- [ ] Ensure `gh-pages` branch is not protected
- [ ] Or add GitHub Actions as allowed to bypass restrictions

## 📋 Workflow Files

### Primary Workflow: `.github/workflows/deploy.yml`
- Uses modern GitHub Pages deployment
- Requires repository settings to be configured

### Backup Workflow: `.github/workflows/deploy-legacy.yml`
- Uses traditional gh-pages method
- More compatible with older setups

## 🎯 Quick Fix Steps

1. **Update repository settings** (most common fix)
2. **Push the updated workflow files**
3. **Check Actions tab** for any errors
4. **Wait for deployment** (usually 2-5 minutes)

## 📞 Still Having Issues?

1. Check the **Actions** tab in your repository
2. Look for specific error messages
3. Ensure your repository is public (or you have GitHub Pro for private repos)
4. Try the manual deployment method above

---

**Your app will be available at:** https://ahnha.github.io/ssadmin 