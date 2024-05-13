import 'package:flutter/material.dart';
import 'app.dart';

Future<void> main() async {
  await init();
  runApp(const MyApp());
}

/// flutter run -d windows
/// flutter build apk --release
/// flutter build apk --split-per-abi
/// flutter build appbundle --release
/// flutter pub run build_runner watch --delete-conflicting-outputs
/// flutter pub run build_runner build --delete-conflicting-outputs
/// flutter pub ipa
/// flutter gen-l10n
