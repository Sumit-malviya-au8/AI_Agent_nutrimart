# NutriMart Flutter Application - AI Assistant Guide

This document provides essential context for AI assistants working with the NutriMart Flutter application codebase.

## Project Overview

NutriMart is a Flutter application targeting multiple platforms (iOS, Android, web, desktop). The project uses:

- Flutter SDK version: ^3.9.2
- Dart language features
- Material Design components
- Flutter testing framework for widget tests

## Project Structure

```
lib/            # Main application code
  main.dart     # Application entry point and root widget
test/          # Test files
  widget_test.dart  # Widget-level tests
```

## Key Development Workflows

### Setting Up Development Environment

1. Ensure Flutter SDK ^3.9.2 is installed
2. Run `flutter pub get` to install dependencies
3. Run `flutter doctor` to verify setup

### Development Commands

- `flutter run` - Run the application in debug mode
- `flutter test` - Run all tests
- `flutter analyze` - Run static analysis
- Hot Reload: Press 'r' in terminal or use IDE tools
- Hot Restart: Press 'R' in terminal or use IDE tools

### Testing Patterns

Widget tests follow this structure (see `test/widget_test.dart`):
```dart
testWidgets('test description', (WidgetTester tester) async {
  await tester.pumpWidget(widget);  // Render widget
  await tester.tap/drag/etc();      // Perform actions
  await tester.pump();              // Rebuild
  expect(...);                      // Assert
});
```

## Code Conventions

1. State Management:
   - Using StatefulWidget for local state
   - State updates through setState() calls

2. Widget Structure:
   - Each screen/page is a separate widget class
   - Widgets use const constructors where possible
   - Widget properties are marked final

3. Theme/Styling:
   - Using MaterialApp theme for consistent styling
   - Colors defined through ColorScheme
   - Text styles from Theme.of(context).textTheme

## Linting and Analysis

The project uses the standard Flutter lint rules from `package:flutter_lints/flutter.yaml`. See `analysis_options.yaml` for any customizations.

## Development Best Practices

1. Use hot reload (not hot restart) for UI changes
2. Write widget tests for new UI components
3. Follow Material Design guidelines for UI/UX
4. Document complex widget builds with comments
5. Use const constructors for immutable widgets

## Cross-Platform Considerations

The project supports multiple platforms through Flutter's cross-platform capabilities. Platform-specific code should be isolated in platform-specific directories:

- `android/` - Android-specific code
- `ios/` - iOS-specific code
- `web/` - Web platform code
- `linux/`, `macos/`, `windows/` - Desktop platform code