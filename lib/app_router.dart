import 'package:flutter/material.dart';
import 'package:posto/screens/login_screen.dart';
import 'package:posto/screens/splash_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
};