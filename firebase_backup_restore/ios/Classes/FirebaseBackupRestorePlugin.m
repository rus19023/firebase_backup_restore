#import "FirebaseBackupRestorePlugin.h"
#if __has_include(<firebase_backup_restore/firebase_backup_restore-Swift.h>)
#import <firebase_backup_restore/firebase_backup_restore-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "firebase_backup_restore-Swift.h"
#endif

@implementation FirebaseBackupRestorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFirebaseBackupRestorePlugin registerWithRegistrar:registrar];
}
@end
