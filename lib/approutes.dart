import 'package:dogphy/auth/onboarding.dart';
import 'package:dogphy/auth/splash_screen.dart';
import 'package:dogphy/screens/homepage.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Map<String, Widget Function(BuildContext ctx)> routes =
      <String, WidgetBuilder>{
    "/": (ctx) => const SplashScreen(),
    "/onboarding": (ctx) => const OnboardingScreen(),
    "/home": (ctx) => const HomePage(),
  };
}
