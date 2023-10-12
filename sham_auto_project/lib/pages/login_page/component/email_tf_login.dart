import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/config/components/custom_form_field.dart';
import 'package:sham_auto_project/config/components/validator_utils.dart';
import 'package:sham_auto_project/pages/login_page/controller/login_controller.dart';

class EmailTextFieldLogin extends StatelessWidget {
  const EmailTextFieldLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return CustomFormField(
            hint: 'Enter your Email',
            controller: controller.emailController,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your Email';
              }
              if (!ValidationRegex.emailRegex(value)) {
                return 'Please enter Valid Email';
              }
              return null;
            });
      },
    );
  }
}
