import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC-Ezew4Pyk084vODLKphGJh8vBWRtqpq4",
            authDomain: "loja-de-cupcakes-q1o42a.firebaseapp.com",
            projectId: "loja-de-cupcakes-q1o42a",
            storageBucket: "loja-de-cupcakes-q1o42a.appspot.com",
            messagingSenderId: "98144504069",
            appId: "1:98144504069:web:ca772cbaa288e778034f6c"));
  } else {
    await Firebase.initializeApp();
  }
}
