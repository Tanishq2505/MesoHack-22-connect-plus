import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:connect_plus/presentation/screens/landing_page.dart';
import 'package:connect_plus/presentation/screens/main_dashboard.dart';
import 'package:connect_plus/presentation/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    return AnimatedSplashScreen.withScreenFunction(
      splash: 'assets/images/connect+large.png',
      screenFunction: () async {
        var user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          return MainDashboard();
        }
        return LandingPage();
      },
      splashIconSize: size.width * 0.8,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
