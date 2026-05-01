# 🔐 Flutter Login App

A complete, production-ready Flutter authentication application with Firebase backend, featuring email/password and phone/OTP authentication, beautiful UI with animations, and support for multiple platforms.

![Flutter](https://img.shields.io/badge/Flutter-3.4.0+-02569B?logo=flutter)
![Firebase](https://img.shields.io/badge/Firebase-Enabled-FFCA28?logo=firebase)
![GetX](https://img.shields.io/badge/GetX-State%20Management-8B5CF6)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-blue)

---

## ✨ Features

### 🔒 Authentication
- ✅ Email & Password Authentication
- ✅ Phone Number Authentication with OTP
- ✅ Auto-login with Session Management
- ✅ Forgot Password Flow
- ✅ Secure Logout

### 🎨 UI/UX
- ✅ Animated Splash Screen
- ✅ Liquid Swipe Onboarding (3 pages)
- ✅ Welcome Screen
- ✅ Login & Signup Screens
- ✅ Dashboard
- ✅ Profile Screen
- ✅ Light & Dark Theme Support
- ✅ Custom Animations
- ✅ Responsive Design

### 🏗️ Architecture
- ✅ MVC Pattern
- ✅ Repository Pattern
- ✅ GetX State Management
- ✅ Singleton Pattern
- ✅ Clean Architecture

---

## 🚀 Quick Start

### Prerequisites
- Flutter SDK (>=3.4.0)
- Firebase Account
- Android Studio / Xcode / VS Code

### Installation

1. **Clone the repository**
```bash
git clone <your-repo-url>
cd login_app
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
# Android
flutter run -d android

# iOS
flutter run -d ios

# Web (requires Firebase web config)
flutter run -d chrome
```

---

## 📱 Platforms Supported

| Platform | Status | Firebase Configured |
|----------|--------|---------------------|
| Android  | ✅ Ready | ✅ Yes |
| iOS      | ✅ Ready | ✅ Yes |
| Web      | ⚠️ Needs Config | ❌ No |
| macOS    | ✅ Ready | ❌ No |
| Windows  | ✅ Ready | ❌ No |
| Linux    | ✅ Ready | ❌ No |

---

## 🔥 Firebase Setup

### Current Configuration
- **Project ID:** `login-app-ww`
- **Authentication:** Email/Password, Phone
- **Database:** Cloud Firestore
- **Platforms:** Android, iOS

### Add Web Support
```bash
# Install Firebase CLI
npm install -g firebase-tools
firebase login

# Install FlutterFire CLI
dart pub global activate flutterfire_cli

# Configure web platform
flutterfire configure --platforms=web
```

---

## 📚 Documentation

Comprehensive documentation is available in the following files:

1. **[PROJECT_ANALYSIS_AND_GUIDE.md](PROJECT_ANALYSIS_AND_GUIDE.md)**
   - Complete project analysis
   - Architecture breakdown
   - Firebase setup guide
   - Step-by-step recreation guide

2. **[QUICK_START_GUIDE.md](QUICK_START_GUIDE.md)**
   - Quick reference for running the app
   - Common issues & solutions
   - Testing guide

3. **[AI_RECREATION_PROMPT.txt](AI_RECREATION_PROMPT.txt)**
   - Complete AI prompt to recreate this app
   - Use with ChatGPT, Claude, Copilot

4. **[SUMMARY_AND_NEXT_STEPS.md](SUMMARY_AND_NEXT_STEPS.md)**
   - Project summary
   - Next steps
   - Troubleshooting

---

## 🏗️ Project Structure

```
lib/
├── main.dart                          # App entry point
├── firebase_options.dart              # Firebase configuration
└── src/
    ├── features/
    │   ├── authentication/            # Auth features
    │   │   ├── controllers/          # Business logic
    │   │   ├── models/               # Data models
    │   │   └── screens/              # UI screens
    │   └── core/                      # Core features
    │       ├── controllers/
    │       ├── models/
    │       └── screens/
    ├── repository/                    # Data layer
    │   ├── authentication_repository/
    │   └── user_repository/
    ├── constants/                     # App constants
    │   ├── colors.dart
    │   ├── text_strings.dart
    │   ├── image_strings.dart
    │   └── sizes.dart
    ├── utils/                         # Utilities
    │   └── theme/                     # Theming
    └── common widgets/                # Reusable widgets
        ├── fade_in_animation/
        └── form/
```

---

## 🛠️ Tech Stack

| Category | Technology |
|----------|-----------|
| Framework | Flutter 3.4.0+ |
| Language | Dart |
| State Management | GetX 4.6.6 |
| Backend | Firebase |
| Authentication | Firebase Auth |
| Database | Cloud Firestore |
| UI Components | Liquid Swipe, OTP Field, Line Awesome Icons |
| Fonts | Google Fonts |

---

## 🎯 App Flow

```
Splash Screen → Onboarding → Welcome → Login/Signup → Dashboard → Profile
```

1. **Splash Screen** - Animated intro with fade-in effects
2. **Onboarding** - 3-page liquid swipe tutorial
3. **Welcome** - Choose Login or Signup
4. **Authentication** - Email/Password or Phone/OTP
5. **Dashboard** - Main app screen (post-login)
6. **Profile** - User profile with logout

---

## 🐛 Known Issues & Fixes

### ✅ Fixed: `dart:ffi` Error
**Problem:** App crashed on web with `dart:ffi` not available error.
**Solution:** Removed unnecessary `import 'dart:ffi';` from:
- `lib/src/features/authentication/screens/splash_screen/splash_screen.dart`
- `lib/src/features/authentication/controllers/on_boarding_controller.dart`

### ⚠️ Web Platform
**Issue:** Firebase not configured for web.
**Solution:** Run `flutterfire configure --platforms=web`

---

## 🧪 Testing

### Test Account
Create a test account through the signup flow:
```
Email: test@example.com
Password: test123456
Name: Test User
Phone: +1234567890
```

### Test Flow
1. Run the app
2. Complete onboarding
3. Signup with test credentials
4. Verify OTP (if using phone)
5. Access dashboard
6. View profile
7. Logout

---

## 🎨 Customization

### Change Colors
Edit `lib/src/constants/colors.dart`

### Change Text
Edit `lib/src/constants/text_strings.dart`

### Change Images
Replace images in `assets/images/` folders

### Change Theme
Edit `lib/src/utils/theme/theme.dart`

---

## 📖 Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [GetX Documentation](https://pub.dev/packages/get)
- [Firebase Flutter Setup](https://firebase.google.com/docs/flutter/setup)
- [FlutterFire Documentation](https://firebase.flutter.dev/)

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🆘 Support

If you encounter any issues:
1. Check the documentation files
2. Run `flutter doctor` to verify setup
3. Run `flutter clean && flutter pub get`
4. Check Firebase Console for errors
5. Review error logs in terminal

---

## 🌟 Show Your Support

Give a ⭐️ if this project helped you!

---

**Built with ❤️ using Flutter & Firebase**