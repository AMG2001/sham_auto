import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sham_auto_project/config/components/custom_form_field.dart';
import 'package:sham_auto_project/pages/signup_page/controller/signup_controller.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
      builder: (controller) {
        return CustomFormField(
            hint: 'Enter your Phone Number',
            controller: controller.phoneNumberController,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your Phone Number';
              }
              return null;
            });
      },
    );
  }
}
