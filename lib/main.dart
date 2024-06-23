import 'package:flutter/material.dart';
import 'package:habity_frontend/pages/get_started.dart';

// import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedScreen(),
      theme: ThemeData(primarySwatch: Colors.brown, fontFamily: "Playwrite Nigeria"),
    );
  }
} 