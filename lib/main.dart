import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:saubol/pages/LoginPage.dart';
import 'package:saubol/auth/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF395AD1),
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
