import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabs:[
        GButton(
            icon: Icons.home,
            text: "Home"
        ),
        GButton(
            icon: Icons.search,
            text: "Search"
        ),
        ]
    );
  }
}