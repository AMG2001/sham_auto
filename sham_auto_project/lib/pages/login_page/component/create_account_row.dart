import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/config/routes/app_routes.dart';
import 'package:sham_auto_project/pages/login_page/controller/login_controller.dart';
import 'package:sham_auto_project/pages/signup_page/view/sign_up.dart';

class CreateAccountRow extends StatelessWidget {
  const CreateAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Not a member?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF352a49)),
            ),
            InkWell(
              onTap: () {
                AppRoutes.navigateOffAll(
                    page: SignUpPage(), transition: Transition.rightToLeft);
              },
              child: const Text(
                ' Register Now',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6a7293)),
              ),
            ),
          ],
        );
      },
    );
  }
}
