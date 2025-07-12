# 🎯 Namer App

A Flutter web application that generates random word pairs for naming ideas. Built with clean architecture and deployed as a Progressive Web App (PWA).

## 🌐 Live Demo

**Access the app:** [https://ahnha.github.io/ssadmin](https://ahnha.github.io/ssadmin)

## 📱 Features

- ✅ Generate random word pairs
- ✅ Progressive Web App (PWA) - Installable on mobile devices
- ✅ Responsive design
- ✅ Clean architecture
- ✅ Material Design 3

## 🚀 Quick Start

### Prerequisites
- Flutter SDK (3.32.6 or higher)
- Dart SDK (3.6.1 or higher)

### Installation
```bash
# Clone the repository
git clone https://github.com/Ahnha/ssadmin.git
cd ssadmin

# Get dependencies
flutter pub get

# Run the app
flutter run -d chrome
```

## 📱 Mobile Installation

### iPhone/iPad
1. Open **Safari** (not Chrome)
2. Go to [https://ahnha.github.io/ssadmin](https://ahnha.github.io/ssadmin)
3. Tap the **Share button** (📤)
4. Select **"Add to Home Screen"**
5. Tap **"Add"**

### Android
1. Open **Chrome**
2. Go to [https://ahnha.github.io/ssadmin](https://ahnha.github.io/ssadmin)
3. Tap the **menu** (⋮)
4. Select **"Add to Home Screen"**

## 🏗️ Project Structure

```
lib/
├── main.dart                 # App entry point
├── app/                      # App-level configuration
│   ├── app.dart             # Main app widget
│   └── theme/               # Theme configuration
├── core/                     # Core functionality
│   └── constants/           # App constants
├── features/                 # Feature-based modules
│   └── home/                # Home feature
│       ├── data/            # Data layer
│       ├── domain/          # Business logic
│       └── presentation/    # UI layer
├── shared/                   # Shared components
│   └── widgets/             # Reusable widgets
└── routes/                   # Navigation
```

## 🛠️ Development

### Build for Web
```bash
flutter build web --release
```

### Build for Android
```bash
flutter build apk --release
```

## 🚀 Deployment

This project uses GitHub Actions for automatic deployment to GitHub Pages.

### Manual Deployment
1. Build the web app: `flutter build web --release`
2. Deploy the `build/web/` folder to your hosting service

### GitHub Pages
- **URL**: https://ahnha.github.io/ssadmin
- **Branch**: gh-pages (auto-generated)
- **Source**: GitHub Actions workflow

## 📦 Dependencies

- **flutter**: UI framework
- **provider**: State management
- **english_words**: Word generation

## 🎨 Customization

### Theme
Edit `lib/app/theme/app_theme.dart` to customize colors and styling.

### Features
Add new features by creating folders under `lib/features/` following the established pattern.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🔗 Links

- **Live App**: [https://ahnha.github.io/ssadmin](https://ahnha.github.io/ssadmin)
- **GitHub Repository**: [https://github.com/Ahnha/ssadmin](https://github.com/Ahnha/ssadmin)

---

**Built with ❤️ using Flutter**
