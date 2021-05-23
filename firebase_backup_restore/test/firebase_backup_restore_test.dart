import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_backup_restore/firebase_backup_restore.dart';

void main() {
  const MethodChannel channel = MethodChannel('firebase_backup_restore');

  // TestWidgetsFlutterBinding.ensureInitialized();
  //
  // setUp(() {
  //   channel.setMockMethodCallHandler((MethodCall methodCall) async {
  //     return '42';
  //   });
  // });
  //
  // tearDown(() {
  //   channel.setMockMethodCallHandler(null);
  // });
  //
  // test('getPlatformVersion', () async {
  //   expect(await FirebaseBackupRestore.platformVersion, '42');
  // });
}
