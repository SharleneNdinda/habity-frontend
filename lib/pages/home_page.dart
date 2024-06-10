import "package:flutter/material.dart";

import "package:habity_frontend/const.dart";
import '../components/bottom_nav.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: BottomNavbar(),
    );
  }
}