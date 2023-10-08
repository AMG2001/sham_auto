import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sham_auto_project/config/device/device_dimenssions.dart';
import 'package:page_transition/page_transition.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: DeviceDimenssions.width,
        height: DeviceDimenssions.height,
        child: AnimatedSplashScreen(
          centered: true,
          splashIconSize: DeviceDimenssions.height,
          pageTransitionType: PageTransitionType.fade,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
              ),
              Text("Sham Auto")
            ],
          ),
          // TODO : Add Register || login || Home page here .
          nextScreen: Scaffold(
            body: Center(
              child: Text("Home Page"),
            ),
          ),
          duration: 1500,
          animationDuration: Duration(seconds: 1),
          curve: Curves.easeInOutCubic,
        ),
      ),
    );
  }
}