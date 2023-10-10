import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/pages/signup_page/components/already_have_account_row.dart';
import 'package:sham_auto_project/pages/signup_page/components/email_TF.dart';
import 'package:sham_auto_project/pages/signup_page/components/first_and_last_name_row.dart';
import 'package:sham_auto_project/pages/signup_page/components/password_TF.dart';
import 'package:sham_auto_project/pages/signup_page/components/phone_number_TF.dart';
import 'package:sham_auto_project/pages/signup_page/components/sign_up_button.dart';
import 'package:sham_auto_project/pages/signup_page/components/signup_header.dart';
import 'package:sham_auto_project/pages/signup_page/controller/signup_controller.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          end: Alignment.bottomLeft,
          begin: Alignment.topRight,
          colors: [
            // B675FD
            Color(0xFFded5e6),
            Color(0xFFd7ddf5),
            Color(0xFFb8c0de),
          ],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: GetBuilder<SignupController>(
            init: SignupController(),
            builder: (controller) {
              return SafeArea(
                child: Center(
                  child: Form(
                    key: controller.formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SignupHeader(),
                          FirstAndLastNameRow(),
                          const SizedBox(
                            height: 12,
                          ),
                          PhoneNumberTextField(),
                          const SizedBox(
                            height: 12,
                          ),
                          EmailTextField(),
                          const SizedBox(
                            height: 12,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          PasswordTextField(),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SignUpButton(),
                          const SizedBox(
                            height: 25,
                          ),
                          AlreadyHaveAccountRow()
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
