import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:sho_app/modules/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      splash: Image.asset('assets/images/pic.png'),
      splashIconSize: 300.0,
      nextScreen: LoginScreen(),
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: Colors.white,

    );
  }
}
