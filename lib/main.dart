import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sho_app/shared/component/constants.dart';
import 'modules/splash_screen/splash_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              backwardsCompatibility: false,
              // Notification bar
              iconTheme: IconThemeData(
                  color: Colors.black87),
              textTheme: TextTheme(
                bodyText2: TextStyle(
                  color: Colors.black87,
                  fontSize: 15.0,
                ),
              ),
              color: Colors.white,
              elevation: 5.0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark,
              ),
            ),
            textTheme: TextTheme(
              headline2:  TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
              bodyText1: TextStyle(
                color: Colors.black87,
                fontSize: 16.0,
              ),
              headline1: TextStyle(
                color: Colors.black87,
                fontSize: 30.0,
              ),
              caption: TextStyle(
                color: Colors.black87,
                fontSize: 11.0,
                fontWeight: FontWeight.normal
              ),
            ),
            fontFamily: 'Cairo-Bold',
            scaffoldBackgroundColor: Colors.white),
        home: SplashScreen());
  }
}
// hello