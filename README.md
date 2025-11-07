# Informatika App - Flutter Training Project

Aplikasi Flutter berbasis GetX untuk pembelajaran mobile programming.

## Deskripsi

Aplikasi ini merupakan implementasi dari Praktikum Mobile Programming v1, yang mencakup berbagai modul pembelajaran Flutter:

- **Widgets**: Eksplorasi widget Flutter dasar
- **Material Design**: Komponen Material Design
- **Basic Widget**: Widget-widget dasar Flutter
- **Layout Structure**: Struktur layout dan tata letak
- **Input Forms**: Widget input form
- **Scrolling List**: Widget scrolling dan list
- **API Integration**: Integrasi dengan REST API
- **Local Storage**: Penyimpanan data lokal
- **Device Features**: Fitur perangkat
- **Study Case**: Studi kasus praktis

## Struktur Aplikasi

Aplikasi ini menggunakan arsitektur GetX dengan struktur folder:

```
lib/
├── app/
│   ├── modules/
│   │   ├── home/
│   │   ├── widgets/
│   │   ├── material_design/
│   │   ├── basic_widget/
│   │   ├── layout_structure/
│   │   ├── input_forms/
│   │   ├── scrolling_list/
│   │   ├── api_integration/
│   │   ├── local_storage/
│   │   ├── device_features/
│   │   └── study_case/
│   └── routes/
│       ├── app_pages.dart
│       └── app_routes.dart
└── main.dart
```

## Getting Started

### Prerequisites

- Flutter SDK (>= 3.0.0)
- Dart SDK

### Instalasi

1. Clone repository ini
2. Jalankan perintah berikut:

```bash
flutter pub get
```

### Menjalankan Aplikasi

```bash
flutter run
```

## Dependencies

- **get**: ^4.6.6 - State management dan routing
- **cupertino_icons**: ^1.0.2 - Icons iOS-style

## Fitur

### Material Design Module
Modul ini mencakup berbagai komponen Material Design:
- AppBar, MaterialApp, Scaffold
- Container, Center, Column, Row
- ListView, GridView, Stack
- AspectRatio, Padding, Expanded, SizedBox
- Card, InkWell, Image, CircleAvatar, Icon
- BottomSheet, AlertDialog, SnackBar
- Drawer, BottomNavigationBar

### Basic Widget Module
Widget-widget dasar Flutter:
- Text, Button, Image, Icon

### Layout Structure Module
Struktur layout:
- Container Layout
- Row & Column Layout
- Stack Layout

### Input Forms Module
Form input widgets:
- TextField, Checkbox, Radio Button
- Switch, Dropdown

### Scrolling List Module
Scrolling dan list widgets:
- ListView, GridView, PageView

## Lisensi

Proyek ini dibuat untuk keperluan pembelajaran.
