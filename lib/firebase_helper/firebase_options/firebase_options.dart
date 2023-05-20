import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:6324351383:ios:dea2beb4e3455d2bf154d2',
        apiKey: 'AIzaSyAinxKhBXIkFG-s1W5PLqMg1MEEMp75hrk',
        projectId: 'ecommapp-7ebb2',
        messagingSenderId: '6324351383',
        iosBundleId: 'com.example.ecommapp',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:6324351383:android:5f92dc7b84825301f154d2',
        apiKey: 'AIzaSyBtRzV5WYrsOwrgkCCNPaGKTUVceOgZ0eo',
        projectId: 'ecommapp-7ebb2',
        messagingSenderId: '6324351383',
      );
    }
  }
}
