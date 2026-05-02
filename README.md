# Task Manager App

A cross-platform Task Manager application built with Flutter.

## Features

- **User Authentication**: Login and registration functionality
- **Task Management**: Create, read, update, and delete tasks
- **Task Organization**: Organize tasks with different screens

## Project Structure

```
lib/
├── main.dart              # App entry point
├── models/
│   └── task_model.dart    # Task data model
├── screens/
│   ├── home_screen.dart   # Main home screen
│   ├── login_screen.dart  # User login
│   ├── register_screen.dart # User registration
│   └── task_form_screen.dart # Create/Edit tasks
└── services/
    ├── auth_service.dart  # Authentication service
    └── task_service.dart  # Task CRUD operations
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio / VS Code

### Installation

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app

## Platforms Supported

- Android
- iOS
- Web
- macOS
- Linux
- Windows

## Screenshots

### Authentication Screens

<p>
  <img src="screenshots/login_screen.png" width="250" alt="Login Screen">
  <img src="screenshots/registration_screen.png" width="250" alt="Register Screen">
</p>

### Task Management Screens

<p>
  <img src="screenshots/task_dashboard.png" width="250" alt="Home Screen">
  <img src="screenshots/create_new_task.png" width="250" alt="Task Form Screen">
  <img src="screenshots/delete_task.png" width="250" alt="Delete Task Screen">
  <img src="screenshots/edit_task.png" width="250" alt="Edit Task Screen">
</p>
