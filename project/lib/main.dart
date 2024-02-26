import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project/firebase_options.dart'; // Make sure this import is correct for your firebase_options.dart file
import 'package:project/router.dart';

String initRoute = '/home';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure Flutter binding initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions
        .currentPlatform, // Use the Firebase configuration options
  );
  runApp(const MyApp()); // Now it's safe to run the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'self-cafe',
      routes: map, // Ensure your routes are defined in this map variable
      initialRoute: initRoute,
    );
  }
}
