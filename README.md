# Bookly App 📚

A modern Flutter application for discovering and exploring books using the Google Books API. Bookly provides a clean, intuitive interface for browsing featured books, bestsellers, and searching for your next great read.

## 📖 Project Overview

Bookly is a comprehensive book discovery application built with Flutter, demonstrating clean architecture principles and modern state management. The app allows users to browse curated book collections, view detailed information about books, discover similar titles, and preview books directly through their browser.

## 🎥 Demo
![Demo](https://github.com/user-attachments/assets/ba52e591-d5f4-469a-998e-e26799e01981)


## 🚀 Tech Stack

### Core Technologies
- **Flutter** - UI framework for building natively compiled applications
- **Dart** - Programming language optimized for client development

### State Management & Architecture
- **flutter_bloc** (^9.1.1) - Business logic component for state management
- **equatable** (^2.0.8) - Simplifying value equality comparisons
- **get_it** (^9.2.0) - Service locator for dependency injection
- **dartz** (^0.10.1) - Functional programming in Dart (Either type for error handling)

### Networking & Data
- **dio** (^5.9.0) - Powerful HTTP client for API requests
- **Google Books API** - Backend data source for book information

### UI & Presentation
- **google_fonts** (^7.0.0) - Custom typography with Google Fonts
- **flutter_svg** (^2.2.3) - SVG rendering support
- **cached_network_image** (^3.4.1) - Efficient image loading and caching
- **shimmer** (^3.0.0) - Elegant loading skeleton screens
- **font_awesome_flutter** (^10.12.0) - Icon library

### Navigation & External Integration
- **go_router** (^17.0.1) - Declarative routing solution
- **url_launcher** (^6.3.2) - Opening external URLs and book previews

### Developer Experience
- **flutter_native_splash** (^2.4.7) - Customizable native splash screens
- **flutter_lints** (^6.0.0) - Recommended lints for Flutter code quality

## 🏗️ Architecture

The project follows **Clean Architecture** principles with clear separation of concerns:

```
lib/
├── core/                          # Shared utilities and constants
│   ├── error/                     # Error handling (Failure classes)
│   ├── helpers/constants/         # App-wide constants
│   ├── utils/                     # Utilities (API service, routing, DI)
│   └── widgets/                   # Reusable UI components
│
├── features/                      # Feature modules
│   ├── home/
│   │   ├── data/
│   │   │   ├── models/           # Data models
│   │   │   └── repos/            # Repository implementations
│   │   └── presentation/
│   │       ├── view_model/       # BLoC/Cubit state management
│   │       └── views/            # UI screens and widgets
│   │
│   ├── search/                   # Search feature module
│   └── splash/                   # Splash screen module
│
└── main.dart                     # Application entry point
```

### Architectural Layers

**1. Data Layer**
- Repository pattern for data access abstraction
- API service using Dio for network requests
- Data models with JSON serialization

**2. Domain Layer**
- Repository interfaces
- Business logic
- Error handling with Either type (Success/Failure)

**3. Presentation Layer**
- BLoC pattern for state management
- Separation of business logic from UI
- Reusable widget components

## ✨ Features

### 📱 Core Functionality
- **Featured Books Carousel** - Horizontally scrollable list of curated programming books
- **Bestseller List** - Vertically scrollable list of newest programming books
- **Book Details** - Comprehensive information including title, author(s), rating, and description
- **Similar Books** - Discover related books based on categories
- **Book Preview** - Launch external preview links in the browser
- **Search** - Real-time book search functionality
- **Elegant Loading States** - Shimmer effects for better UX during data fetching
- **Error Handling** - Graceful error messages and fallback UI

### 🎨 UI/UX Highlights
- **Dark Theme** - Eye-friendly dark color scheme (#100B20)
- **Custom Typography** - Beautiful fonts using Google Fonts (Montserrat Alternates, Inria Serif)
- **Smooth Animations** - Fade transitions and natural navigation
- **Cached Images** - Fast image loading with caching
- **Responsive Design** - Adaptive layouts for different screen sizes
- **Rating System** - Visual star ratings for books

## 🧪 Testing

The project includes a test structure with:
- Widget tests for UI components
- Integration tests for platform-specific functionality
- Test driver setup for automated testing

```dart
test/
└── widget_test.dart              # Widget testing examples
```

## 📁 Folder Structure

```
bookly_app/
├── assets/                        # Application assets
│   ├── png/                      # PNG images (splash screens, placeholders)
│   └── svg/                      # SVG icons (logo)
│
├── lib/
│   ├── core/
│   │   ├── error/
│   │   │   └── failure.dart      # Error handling classes
│   │   ├── helpers/constants/
│   │   │   ├── assets_constants.dart
│   │   │   ├── colors_constants.dart
│   │   │   └── general_constants.dart
│   │   ├── utils/
│   │   │   ├── api_service.dart  # Dio API service
│   │   │   ├── app_router.dart   # GoRouter configuration
│   │   │   ├── app_text_styles.dart
│   │   │   ├── dependancy_injection.dart
│   │   │   └── functions/
│   │   │       └── lunch_url.dart
│   │   └── widgets/              # Reusable widgets
│   │       ├── custom_button.dart
│   │       ├── custom_error_widget.dart
│   │       ├── custom_loading_widget.dart
│   │       └── custom_text_filed.dart
│   │
│   ├── features/
│   │   ├── home/
│   │   │   ├── data/
│   │   │   │   ├── models/book_response_model/
│   │   │   │   └── repos/
│   │   │   │       ├── home_repo.dart
│   │   │   │       └── home_repo_implementation.dart
│   │   │   └── presentation/
│   │   │       ├── view_model/
│   │   │       │   ├── bestsellerbooks_cubit/
│   │   │       │   ├── futured_books_cubit/
│   │   │       │   └── similarbooks/
│   │   │       └── views/
│   │   │           ├── book_details_view.dart
│   │   │           ├── home_view.dart
│   │   │           └── widgets/
│   │   │
│   │   ├── search/
│   │   │   ├── data/repos/
│   │   │   └── presentation/
│   │   │
│   │   └── splash/
│   │       └── presentation/
│   │
│   └── main.dart
│
├── test/                         # Test files
├── analysis_options.yaml         # Linting configuration
├── pubspec.yaml                  # Dependencies
└── README.md                     # This file
```

## 🚀 How to Run the Project

### Prerequisites
- Flutter SDK (3.10.4 or higher)
- Dart SDK (3.10.4 or higher)
- Android Studio / VS Code with Flutter extensions
- iOS development tools (for iOS builds)

### Installation Steps

1. **Clone the repository**
```bash
git clone https://github.com/Hossam-Yaser/Bookly-App
cd bookly_app
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Generate splash screens** (optional)
```bash
flutter pub run flutter_native_splash:create
```

4. **Run the app**
```bash
# For development
flutter run

# For specific platform
flutter run -d chrome        # Web
flutter run -d android       # Android
flutter run -d ios           # iOS
```

5. **Build for production**
```bash
flutter build apk            # Android APK
flutter build ios            # iOS
flutter build web            # Web
```

### Configuration

The app uses the Google Books API. No API key is required for the current implementation, but rate limits may apply.

## 🔮 Future Improvements

### Planned Features
- [ ] **Offline Support** - Cache book data for offline browsing
- [ ] **Favorites/Bookmarks** - Save favorite books locally
- [ ] **Reading Lists** - Create and manage custom reading lists
- [ ] **Advanced Filters** - Filter by genre, publication date, language
- [ ] **User Authentication** - Personal library and sync across devices
- [ ] **Book Reviews** - Read and write book reviews
- [ ] **Dark/Light Theme Toggle** - User-selectable theme preferences
- [ ] **Multi-language Support** - Internationalization (i18n)
- [ ] **Audio Book Integration** - Preview audiobook samples
- [ ] **Barcode Scanner** - Search books by ISBN scanning
- [ ] **Share Functionality** - Share book recommendations
- [ ] **Reading Progress Tracker** - Track reading progress and statistics

### Technical Improvements
- [ ] Unit tests for business logic
- [ ] Widget tests for all components
- [ ] Integration tests for critical user flows
- [ ] Performance optimization for large lists
- [ ] Accessibility improvements (screen reader support)
- [ ] Analytics integration
- [ ] Crash reporting (Firebase Crashlytics)
- [ ] CI/CD pipeline setup

## 📸 Screenshots

<div align="center">
  <h3>Application Preview</h3>
  <p>Explore the beautiful interface and smooth interactions</p>
  
  <table>
    <tr>
      <td align="center">
       <img width="250" height="2400" alt="Screenshot_1768538057" src="https://github.com/user-attachments/assets/d69ce549-a827-4c54-a306-9adca42fb866" /><br/>
        <b>Splash Screen</b>
      </td>
      <td align="center">
       <img width="250" height="2400" alt="Screenshot_1768538003" src="https://github.com/user-attachments/assets/b7a4f270-bc1b-4528-8ecd-665818e6977f" /><br/>
        <b>HomeScreen</b>
      </td>
      <td align="center">
       <img width="250" height="2400" alt="Screenshot_1768538012" src="https://github.com/user-attachments/assets/7099889e-3a46-47ce-8c93-d21e52041abf" /><br/>
        <b>Book Details Screen</b>
      </td>
    </tr>
      <td align="center">
      <img width="250" height="2400" alt="Screenshot_1768538023" src="https://github.com/user-attachments/assets/d617cc98-ee64-464b-8ac6-b23b1b6e512c" /><br/>
        <b>Search Screen</b>
      </td>
      <td align="center">
      <img width="250" height="2400" alt="Screenshot_1768538034" src="https://github.com/user-attachments/assets/e81249cc-2769-4f0e-b079-6d3a72bb907d" /><br/>
        <b>Search Screen</b>
      </td>
      <td align="center">
      <img width="250" height="2400" alt="Screenshot_1768538032" src="https://github.com/user-attachments/assets/53f41620-da84-4aa0-aa7d-11d691b22cd0" /><br/>
        <b>Search Screen</b>
      </td>
    </tr>
  </table>
</div>

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Developer

**Hossam Yasser Abdelhady**  
📱 Cross-platform Mobile App Developer | Flutter | Dart  
💼 Passionate about creating modern, efficient, and user-friendly mobile applications.  

* 💼 [LinkedIn](https://www.linkedin.com/in/hossam-yasser-abdelhady/)
* 🐙 [GitHub](https://github.com/Hossam-Yaser)
* ✉️ Email: [hossamabdelhady000@gmail.com](hossamabdelhady000@gmail.com)


## 🙏 Acknowledgments

- Big thanks for Eng. Tharwat Samy for his effort
- Google Books API for providing comprehensive book data
- Flutter team for the amazing framework
- All open-source contributors whose packages made this project possible

---

⭐ If you found this project helpful, please consider giving it a star!

**Made with ❤️ and Flutter**
