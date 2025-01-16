import 'package:flutter/material.dart';
import 'package:narrative_clothes1/pages/login_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Narrative Clothes',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 255, 255)),
          useMaterial3: true,
        ),
        home: AnimatedSplashScreen(
          splash: Image.asset(
            'images/logo_dark.png',
            width: 350,
          ),
          nextScreen: LoginPage(),
          splashTransition: SplashTransition.fadeTransition,
          // pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.white,
        ));
  }
}
