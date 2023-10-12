import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sham_auto_project/pages/login_page/controller/login_controller.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return InkWell(
          onTap: () async {
            await controller.loginUser();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .07,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFe65a70),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sign In',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.white,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
