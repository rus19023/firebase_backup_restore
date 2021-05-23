# firebase_backup_restore

A flutter plugin for backup and restoring firebase cloud documents.

## Register with firebase
 - add firebase_core and cloud_firestore dependencies.
 - for android - Add google-services.json to your android/app folder.
 - for ios - Add GoogleService-info.plist to your ios/Runner folder.

 - Initialize firebase
```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
```

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

 - Initialize firestore collection list
```dart
FirebaseBackupRestore().collections = ['posts', 'users',];
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
