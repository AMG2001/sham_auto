import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sham_auto_project/config/device/device_dimenssions.dart';
import 'package:sham_auto_project/pages/login_page/components/create_account_row.dart';
import 'package:sham_auto_project/pages/login_page/components/email_tf_login.dart';
import 'package:sham_auto_project/pages/login_page/components/login_header.dart';
import 'package:sham_auto_project/pages/login_page/components/loginin_button.dart';
import 'package:sham_auto_project/pages/login_page/components/password_tf_login.dart';
import 'package:sham_auto_project/pages/login_page/components/recovery_password.dart';
import 'package:sham_auto_project/pages/login_page/controller/login_controller.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: DeviceDimenssions.width,
        height: DeviceDimenssions.height,
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
          body: GetBuilder<LoginController>(
            init: LoginController(),
            builder: (controller) =>  Center(
              child: SingleChildScrollView(
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginHeader(),
                      EmailTextFieldLogin(),
                      const SizedBox(
                        height: 12,
                      ),
                      PasswordTextFieldLogin(),
                      const SizedBox(
                        height: 8,
                      ),
                      RecoveryPassword(),
                      const SizedBox(
                        height: 8,
                      ),
                      LoginButton(),
                      const SizedBox(
                        height: 25,
                      ),
                      CreateAccountRow(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }

}
