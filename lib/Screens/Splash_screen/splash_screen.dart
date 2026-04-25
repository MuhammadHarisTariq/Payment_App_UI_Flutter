import 'package:flutter/material.dart';
import 'package:ppp/Screens/Dashboard_Screen/dashboard_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0D0D),
      body: SafeArea(
        child: Column(
          children: [
            // ── Logo centered ──
            Expanded(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    "assets/logo.png", // add your logo asset path here
                    fit: BoxFit.cover,
                  ), // Image.asset
                ), // Container
              ), // Center
            ), // Expanded
            // ── Bottom Section ──
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  // ── Button ──
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF4B4BF5),
                          Color(0xFF7B5BF5),
                        ], // colors
                      ), // LinearGradient
                      borderRadius: BorderRadius.circular(10),
                    ), // BoxDecoration
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashboardScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ), // RoundedRectangleBorder
                      ), // ElevatedButton.styleFrom
                      child: Text(
                        "INSTANT PAY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ), // TextStyle
                      ), // Text
                    ), // ElevatedButton
                  ), // Container

                  SizedBox(height: 14),

                  Text(
                    "Your Perfect Payment Partner",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                    ), // TextStyle
                  ), // Text

                  SizedBox(height: 16),

                  // ── Dots Indicator ──
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return Container(
                        height: 8,
                        width: 8,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == 0 ? Colors.white : Colors.white24,
                        ), // BoxDecoration
                      ); // Container
                    }),
                  ), // Row
                ],
              ), // Column
            ), // Padding
          ],
        ),
      ),
    ); // Scaffold
  }
}
