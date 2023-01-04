import 'package:flutter/material.dart';
import 'package:posto/screens/login_screen.dart';
import 'package:posto/utils/helper/AssetHelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = '/splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectScreen();
  }

  void redirectScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushNamed(LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            AssetHelper.splashBackground,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          child: Center(
            child: Image.asset(
              AssetHelper.splashLogo
            ),
          ),
        ),
      ],
    );
  }
}
