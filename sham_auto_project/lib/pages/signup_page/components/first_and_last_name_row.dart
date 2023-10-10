import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/pages/signup_page/controller/signup_controller.dart';
import 'package:sham_auto_project/pages/signup_page/view/sign_up.dart';

class FirstAndLastNameRow extends StatelessWidget {
  const FirstAndLastNameRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
      builder: (controller) {
        return Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your first name',
                          border: InputBorder.none,
                        ),
                        controller: controller.firstNameController,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        })),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 25,
                ),
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your last name',
                          border: InputBorder.none,
                        ),
                        controller: controller.lastNameController,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        })),
              ),
            ),
          ],
        );
      },
    );
  }
}
