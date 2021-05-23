# firebase_backup_restore

A flutter plugin for backup and restoring firebase cloud documents.

![Sample Use](flutter_currency_converter/assets/rsz_simulator_screen_shot_-_iphone_11_pro_max_-_2020-08-08_at_154657.png)

## Getting Started

## Register your apps with firebase.
 - for android - Add google-services.json to your android/app folder.
 - for ios - Add GoogleService-info.plist to your ios/Runner folder.

## Installation
 - Pub get
```dart
firebase_backup_restore: ^0.0.1
```

 - Import
```dart
import 'package:firebase_backup_restore/results.dart';
import 'package:firebase_backup_restore/firebase_backup_restore.dart';
```

 - Init firebase
```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
```

 - Init firebase collection list
```dart
FirebaseBackupRestore().collections = ['posts', 'users'];
```

## Using
 - Backup All
```dart
await FirebaseBackupRestore().backupAll();
```

 - Restore All
```dart
await FirebaseBackupRestore().restoreAll();
```

 - Backup specific document
```dart
await FirebaseBackupRestore().backup(collectionId: "users");
```

 - Restore specific document
```dart
await FirebaseBackupRestore().restore(collectionId: "users");
```

## Authors

* [ShehanRashmika](https://github.com/ShehanRashmika)
