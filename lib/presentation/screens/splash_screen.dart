import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:connect_plus/presentation/screens/main_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.bottom,
      ],
    );
    var size = MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      splash: 'assets/images/connect+large.png',
      nextScreen: MainDashboard(),
      splashIconSize: size.width * 0.8,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
