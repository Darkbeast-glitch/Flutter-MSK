# Flutter MVC Riverpod Starter Kit

Welcome to the **Flutter MVC with Riverpod Starter Kit**! This template provides a robust and organized foundation for building Flutter applications using the **Model-View-Controller (MVC)** architecture with **Riverpod** for state management. Use this starter kit to quickly scaffold a new project with best practices and a clean folder structure.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Folder Structure](#folder-structure)
- [Architecture Overview](#architecture-overview)
- [Contributing](#contributing)
- [License](#license)

## Features

- **MVC Architecture**: Separates the application logic, UI, and data models for clean and maintainable code.
- **Riverpod State Management**: Provides a robust and reactive approach to managing application state.
- **Organized Folder Structure**: Ensures code is easy to navigate and maintain.
- **Preconfigured Dependencies**: Includes commonly used packages like Riverpod and HTTP for API interaction.
- **Easy Asset Management**: Predefined folders for icons, images, and fonts.
- **Extendable**: Designed to be a foundation that you can extend and customize for your specific needs.

## Prerequisites

- **Flutter**: Ensure you have Flutter installed (v3.0.0 or higher). Check installation instructions at [Flutter.dev](https://flutter.dev/docs/get-started/install).
- **Dart SDK**: Make sure you have Dart SDK installed (v2.19.0 or higher).
- **Mason CLI**: Install Mason for scaffolding the template.
  ```bash
  dart pub global activate mason_cli
  ```

## Installation

To use this starter kit, you need to add it to Mason. You can do this in several ways depending on how the brick is distributed:

### 1. Using GitHub Repository

If this brick is hosted on GitHub, add it using:

before you add it from git make sure you initialize mason using the command below:


```bash
mason init 
```


```bash
mason add flutter_mvc_riverpod_starter --git-url https://github.com/Darkbeast-glitch/Flutter-MSK.git
```
<!-- 
Replace `<username>` and `<repository>` with the appropriate GitHub username and repository name. -->

### 2. Using a Local Path

If you have a local copy of this repository, you can add the brick to Mason from a local path:

```bash
mason add flutter_mvc_riverpod_starter --path ./path_to_brick
```

Ensure you replace `path_to_brick` with the actual path to the `flutter_mvc_riverpod_starter` brick folder.

## Usage

After adding the **Flutter MVC Riverpod Starter Kit** brick to Mason, you can generate a new Flutter project using:

```bash
mason make flutter_mvc_riverpod_starter --name my_new_app
```

Replace `my_new_app` with the desired name for your new project. If you don't specify a name, the default `my_flutter_app` is used.

**Example**:

```bash
mason make flutter_mvc_riverpod_starter --project_name awesome_project
```

This command will generate a new Flutter application with the folder structure and files outlined in the Features section. Once the project generation is complete:

1. Navigate into the newly created project directory:
   ```bash
   cd awesome_project
   ```

2. Fetch the project dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```
   
Your new Flutter MVC with Riverpod application should now be up and running!

## Folder Structure

Here's an overview of the folder structure generated by this starter kit:

```
my_new_app/
├── assets
│   ├── fonts
│   ├── icons
│   └── images
├── lib
│   ├── models
│   │   └── user_model.dart
│   ├── providers
│   │   ├── app_provider.dart
│   │   └── auth_provider.dart
│   ├── routes
│   │   └── app_routes.dart
│   ├── services
│   │   └── api_service.dart
│   ├── utils
│   │   ├── constants.dart
│   │   └── styles.dart
│   └── views
│       ├── auths
│       │   └── login_screen.dart
│       ├── intro_screens
│       │   └── intro_screen.dart
│       └── pages
│           └── home_page.dart
├── pubspec.yaml
└── lib
    └── main.dart
```

### Directory Details

- **assets/**: 
  - **fonts/**: Contains custom font files used in the project.
  - **icons/**: Stores icon assets (SVG or PNG files).
  - **images/**: Contains image assets for the application.

- **lib/**:
  - **main.dart**: The entry point of the Flutter application.
  - **models/**: Contains data models that represent the structures used in the application, such as `UserModel`.
  - **providers/**: Holds Riverpod providers that manage state and logic. For example:
    - `app_provider.dart` manages application-wide states (like theme).
    - `auth_provider.dart` manages authentication state.
  - **routes/**: Defines routes (navigation paths) and the `AppRoutes` class for consistent route management.
  - **services/**: Contains classes that interact with external services, APIs, or data sources. For example, `api_service.dart` handles HTTP requests.
  - **utils/**: Stores utility classes and files for constants and styles:
    - `constants.dart`: Defines application-wide constants, such as the application name.
    - `styles.dart`: Contains styling elements like `TextStyle` and theme configurations.
  - **views/**: Contains user interface code organized into subdirectories:
    - **auths/**: Authentication-related screens, such as `LoginScreen`.
    - **intro_screens/**: Introductory or onboarding screens, such as `IntroScreen`.
    - **pages/**: Primary pages of the application, such as `HomePage`.

## Architecture Overview

This starter kit follows the MVC (Model-View-Controller) architectural pattern, combined with **Riverpod** for state management:

- **Models**:
  - Reside in the `lib/models` folder.
  - Represent data structures (e.g., `UserModel`) that the application uses.

- **Views**:
  - Located in the `lib/views` folder.
  - Contain UI logic divided into categories like `auths`, `intro_screens`, and `pages`.
  - Use Riverpod providers to interact with state.

- **Controllers / Providers**:
  - This starter uses **Riverpod providers** as controllers for managing and updating application state.
  - Providers are located in the `lib/providers` folder.

- **Services**:
  - In the `lib/services` folder.
  - Handle data fetching, storage, and interactions with APIs or other external resources.

## Contributing

We welcome contributions to improve this Flutter MVC with Riverpod starter kit! If you have suggestions for enhancements, bug fixes, or want to contribute a new feature:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeature`).
3. Make your changes and commit them (`git commit -m 'Add some feature'`).
4. Push the branch (`git push origin feature/YourFeature`).
5. Open a pull request to the `main` branch.

Please ensure your code follows existing conventions and is covered by tests.

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

**Happy Coding!**

Use this starter kit to build your next Flutter MVC application efficiently. If you find any issues or have suggestions, please open an issue or contribute directly through a pull request. Your feedback helps make this template better.