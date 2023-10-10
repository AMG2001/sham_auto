import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/config/components/custom_form_field.dart';
import 'package:sham_auto_project/config/components/validator_utils.dart';
import 'package:sham_auto_project/pages/signup_page/controller/signup_controller.dart';

class PasswordTextField extends StatelessWidget {
  PasswordTextField({super.key});

  bool hidePassword = true;

  bool hideConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
      builder: (controller) {
        return StatefulBuilder(
          builder: (context, setState) {
            return CustomFormField(
              hint: 'Enter your Password',
              textInputType: TextInputType.visiblePassword,
              controller: controller.passwordController,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter your Password';
                }
                if (!ValidationRegex.passwordRegex(value)) {
                  return 'Please enter valid Password';
                }
                return null;
              },
              isPassword: hidePassword,
              suffix: IconButton(
                onPressed: () {
                  if (hidePassword == false) {
                    hidePassword = true;
                  } else {
                    hidePassword = false;
                  }
                  setState(() {});
                },
                icon: hidePassword
                    ? Icon(
                        Icons.visibility,
                        color: Colors.grey[500],
                      )
                    : Icon(Icons.visibility_off, color: Colors.grey[500]),
              ),
            );
          },
        );
      },
    );
  }
}
