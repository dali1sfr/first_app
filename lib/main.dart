import 'package:first_app/Home.dart';
import 'package:flutter/material.dart';

void main() {
    // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  //FFAppState(); // Initialize FFAppState

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

