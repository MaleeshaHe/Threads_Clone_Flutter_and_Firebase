import 'package:flutter/material.dart';
import 'package:threads_clone/screens/authentiction/register_screen.dart';
import 'package:threads_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      title: "Threads Clone",
      home: const RegisterScreen(),
    );
  }
}
