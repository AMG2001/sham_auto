import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/services/mongodb/app/user_collection_controller.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  Future<void> loginUser() async {
    await UserCollectionController.instance.loginUser(
        email: emailController.text, password: passwordController.text);
  }
}
