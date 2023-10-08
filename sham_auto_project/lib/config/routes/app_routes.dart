import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/pages/home/view/home_page.dart';
import 'package:sham_auto_project/pages/login_page/login_page.dart';
import 'package:sham_auto_project/pages/signup_page/sign_up.dart';

class AppRoutes {
  static String homePage = "/homePage";
  static String splashPage = "/splashPage";
  static String loginPage = "/loginPage";
  static String signupPage = "/signupPage";

  static void navigateTo(
      {required Widget page, Transition transition = Transition.fade}) {
    Get.to(() => page, transition: transition);
  }

  static void navigateOff(
      {required Widget page, Transition transition = Transition.fade}) {
    Get.off(() => page, transition: transition);
  }

  static void navigateOffAll(
      {required Widget page, Transition transition = Transition.fade}) {
    Get.offAll(() => page, transition: transition);
  }

  static List<GetPage<dynamic>>? applicationRoutes() {
    return [
      GetPage(
        name: AppRoutes.signupPage,
        page: () => SignUpPage(),
        transition: Transition.fade,
        curve: Curves.easeInOutCubic,
        transitionDuration: Duration(milliseconds: 750),
      ),
      GetPage(
        name: AppRoutes.loginPage,
        page: () => LoginPage(),
        transition: Transition.fade,
        curve: Curves.easeInOutCubic,
        transitionDuration: Duration(milliseconds: 750),
      ),
      GetPage(
        name: AppRoutes.homePage,
        page: () => HomePage(),
        transition: Transition.fade,
        curve: Curves.easeInOutCubic,
        transitionDuration: Duration(milliseconds: 750),
      ),
    ];
  }
}
