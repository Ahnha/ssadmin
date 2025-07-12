# Flutter Project Structure

This project follows a clean architecture pattern with feature-based organization.

## Directory Structure

```
lib/
├── main.dart                 # App entry point
├── app/                      # App-level configuration
│   ├── app.dart             # Main app widget
│   └── theme/               # Theme configuration
│       └── app_theme.dart
├── core/                     # Core functionality
│   ├── constants/           # App constants
│   ├── utils/               # Utility functions
│   └── services/            # Core services (API, storage, etc.)
├── features/                 # Feature-based modules
│   └── home/                # Home feature
│       ├── data/            # Data layer
│       │   ├── models/      # Data models
│       │   └── repositories/ # Data repositories
│       ├── domain/          # Business logic layer
│       │   ├── entities/    # Business entities
│       │   └── usecases/    # Use cases
│       └── presentation/    # UI layer
│           ├── pages/       # Full pages
│           ├── widgets/     # Feature-specific widgets
│           └── controllers/ # State management
├── shared/                   # Shared components
│   ├── widgets/             # Reusable widgets
│   └── models/              # Shared models
└── routes/                   # Navigation
    └── app_routes.dart
```

## Naming Conventions

- **Files**: Use snake_case (e.g., `home_page.dart`)
- **Classes**: Use PascalCase (e.g., `HomePage`)
- **Variables**: Use camelCase (e.g., `currentWord`)
- **Constants**: Use SCREAMING_SNAKE_CASE (e.g., `APP_NAME`)

## Adding New Features

1. Create a new folder under `features/`
2. Follow the data/domain/presentation structure
3. Add routes in `routes/app_routes.dart`
4. Update imports as needed

## State Management

This project uses Provider for state management. Controllers should extend `ChangeNotifier` and be placed in the `presentation/controllers/` directory.

## Widgets

- **Pages**: Full screen widgets in `presentation/pages/`
- **Widgets**: Reusable components in `presentation/widgets/`
- **Shared Widgets**: App-wide reusable widgets in `shared/widgets/` 