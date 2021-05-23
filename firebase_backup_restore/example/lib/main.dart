import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_backup_restore/results.dart';

import 'package:firebase_backup_restore/firebase_backup_restore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    setCollectionList();
    super.initState();
  }

  setCollectionList() {
    //need to specify your all collections before calling backup all and restore all functions
    FirebaseBackupRestore().collections = ['posts', 'users'];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Firebase Backup Restore example app'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    //to backup all collections
                    BackUpResult res =
                        await FirebaseBackupRestore().backupAll();

                    //check errors before moving to the next code
                    print(res.hasError);
                    //check message
                    print(res.message);
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text("Backup all Now")),
              ElevatedButton(
                  onPressed: () async {
                    //to restoring all collections
                    RestoreResult res =
                        await FirebaseBackupRestore().restoreAll();

                    print(res.hasError);
                    print(res.message);
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text("Restore all Now")),
              ElevatedButton(
                  onPressed: () async {
                    //to backup specific collection
                    BackUpResult res = await FirebaseBackupRestore()
                        .backup(collectionId: "users");

                    print(res.hasError);
                    print(res.message);
                    //backup result will contain file object
                    print(res.file.path);
                    //and the json content
                    print(res.content);
                  },
                  child: Text("BackUp users Now")),
              ElevatedButton(
                  onPressed: () async {
                    //to restore specific collection
                    RestoreResult res = await FirebaseBackupRestore()
                        .restore(collectionId: "users");

                    //if you already have json string file, set the content attribute
                    //await FirebaseBackupRestore().restore(collectionId: "users",content: '[{"title":"test 1"}, {"title":"test 1"}, {"title":"test 1"}, {"title":"test 1"}, {"id":"c7Lnk0o0PUrq0ltLBePo","title":"title 2"}, {"title":"test 1"}, {"title":"test 1"}]');

                    print(res.hasError);
                    print(res.message);
                    print(res.source);
                  },
                  child: Text("Restore users Now")),
            ],
          ),
        ),
      ),
    );
  }
}
