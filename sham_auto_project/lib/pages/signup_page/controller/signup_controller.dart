import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/config/models/user_data_model.dart';
import 'package:sham_auto_project/config/routes/app_routes.dart';
import 'package:sham_auto_project/pages/home/view/home_page.dart';
import 'package:sham_auto_project/services/functions/dialogs.dart';
import 'package:sham_auto_project/services/local_db/user_data_box.dart';
import 'package:sham_auto_project/services/local_db/user_logged_state.dart';
import 'package:sham_auto_project/services/mongodb/app/user_collection_controller.dart';

class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  Future<void> registerNewUser() async {
    showLoadingIndicator();
    UserDataModel userDataModel = UserDataModel(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        name: firstNameController.text + " " + lastNameController.text,
        credintial: 'user',
        email: emailController.text,
        password: passwordController.text,
        phoneNumber: phoneNumberController.text);

    await UserCollectionController.instance
        .registerUser(userDataModel: userDataModel);
  }
}
