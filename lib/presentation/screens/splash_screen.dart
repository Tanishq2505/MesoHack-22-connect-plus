import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:connect_plus/presentation/screens/main_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      splash: 'assets/images/connect+large.png',
      nextScreen: MainDashboard(),
      splashIconSize: size.width * 0.8,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
