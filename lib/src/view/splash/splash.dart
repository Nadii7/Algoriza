import 'package:flutter/material.dart';
import '../onboarding/onboarding.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/";
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      );
    });
    return Scaffold(
      body: Body(),
    );
  }
}
