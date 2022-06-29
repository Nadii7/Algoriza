import 'package:algoriza/src/view/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

import '../view/authentication/login/login_screen.dart';
import '../view/authentication/register/register_screen.dart';
import '../view/splash/splash.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => SplashScreen(),
  '/onboarding': (context) => OnboardingScreen(),
  '/login': (context) => LoginScreen(),
  '/register': (context) => RegisterScreen(),
};
