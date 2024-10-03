# Country Information App

This Flutter project fetches data from multiple REST APIs, extracts specific country information (common name, official name, currency, and flag), and displays it in a readable format. The app also provides a filtering functionality that allows users to filter countries alphabetically.

### Table of Contents:
- [Features](#features)
- [About_data](#about-data)
- [Installation](#installation)
- [How to Run](#how-to-run)
- [Dependencies](#dependencies)
- [App Architecture](#app-architecture)
- [Screenshots](#screenshots)

## Features

- Fetches and displays information about multiple countries including:
  - Common Name
  - Official Name
  - Currency (symbol and name)
- Displays country flag images.
- Filters countries alphabetically.

## About Data

The app fetches data from the following APIs:

- [Germany](https://restcountries.com/v3.1/translation/germany)
- [India](https://restcountries.com/v3.1/translation/india)
- [Israel](https://restcountries.com/v3.1/translation/israel)
- [Sri Lanka](https://restcountries.com/v3.1/translation/lanka)
- [Italy](https://restcountries.com/v3.1/translation/italy)
- [China](https://restcountries.com/v3.1/translation/china)
- [Korea](https://restcountries.com/v3.1/translation/korea)
  

## Installation

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)

1. **Clone the repository:**

   ```bash
   git clone https://github.com/im-dpaul/country-app.git
   cd country-app
   ```

2. **Install Flutter dependencies:**

   ```bash
   flutter pub get
   ```

## How to Run

1. Connect a physical device via USB or start an Android/iOS emulator.
2. Ensure that the internet connection is available to fetch the country data.
3. Run the project using the command:

   ```bash
   flutter run
   ```

   This will compile and run the app on your connected device or emulator.


## Dependencies

- [GetX](https://pub.dev/packages/get): State management library.
- [Dio](https://pub.dev/packages/dio): HTTP client for API requests.
- [Flutter](https://flutter.dev): UI framework.

Add these dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.3.8
  dio: ^4.0.6
```

## App Architecture

The app follows the **Model-View-Controller (MVC)** pattern using **GetX** for state management. The **Dio** package is used to handle API calls, ensuring asynchronous fetching and error handling.

- **Model**: Represents the country data structure.
- **Controller**: Handles the logic for fetching, filtering, and updating data.
- **Screens**: Displays data fetched from the API and manages user interaction.

## Screenshots
<img src="https://github.com/user-attachments/assets/47be86e0-da38-438c-9230-34905b10898d" width="220"> &nbsp; &nbsp;
<img src="https://github.com/user-attachments/assets/c66b5e49-0a2e-4091-9c14-a3202015fc5b" width="220"> &nbsp; &nbsp;
<img src="https://github.com/user-attachments/assets/90d2025d-2acf-4694-8190-7f1624af7fd5" width="220"> &nbsp; &nbsp;
<img src="https://github.com/user-attachments/assets/fb530075-cfc3-4ae7-b39f-b1da923c2c99" width="220">
