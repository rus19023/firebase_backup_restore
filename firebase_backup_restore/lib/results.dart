import 'dart:io';

class BackUpResult {
  String collection;
  String content;
  File file;
  bool hasError;
  String message;
}

class RestoreResult {
  String collection;
  String message;
  String source;
  bool hasError;
}
