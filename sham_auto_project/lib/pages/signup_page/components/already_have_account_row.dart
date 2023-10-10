import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/config/routes/app_routes.dart';
import 'package:sham_auto_project/pages/login_page/view/login_page.dart';
import 'package:sham_auto_project/pages/signup_page/controller/signup_controller.dart';

class AlreadyHaveAccountRow extends StatelessWidget {
  const AlreadyHaveAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already Have Account?',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF352a49)),
            ),
            GestureDetector(
              onTap: () {
                AppRoutes.navigateOffAll(
                    page: LoginPage(), transition: Transition.rightToLeft);
              },
              child: const Text(
                ' Login Now',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF6a7293)),
              ),
            ),
          ],
        );
      },
    );
  }
}
