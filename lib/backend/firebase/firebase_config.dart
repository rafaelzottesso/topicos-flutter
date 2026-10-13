import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBCi3NKfGyVcnNE5J3wQquDwozpwwITjaY",
            authDomain: "tet2026-5776d.firebaseapp.com",
            projectId: "tet2026-5776d",
            storageBucket: "tet2026-5776d.firebasestorage.app",
            messagingSenderId: "351713617528",
            appId: "1:351713617528:web:f0b79a9fc146aa2b44ef8d"));
  } else {
    await Firebase.initializeApp();
  }
}
