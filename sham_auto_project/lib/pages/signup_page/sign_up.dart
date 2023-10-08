import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sham_auto_project/config/component/custom_form_field.dart';
import 'package:sham_auto_project/config/component/validator_utils.dart';
import 'package:sham_auto_project/config/routes/app_routes.dart';
import 'package:sham_auto_project/pages/login_page/login_page.dart';

class SignUpPage extends StatefulWidget {
  static const String routeName = 'signuppage';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  bool hidePassword = true;

  bool hideConfirmPassword = true;

  var formKey = GlobalKey<FormState>();

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
        body: SafeArea(
          child: Center(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: MediaQuery.of(context).size.width * .45,
                      height: MediaQuery.of(context).size.width * .4,
                    ),
                    Text('Hello',
                        style: GoogleFonts.bebasNeue(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF352a49))),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign Up, to access all the features',
                      style: GoogleFonts.lato(
                          color: const Color(0xFF352a49),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                            ),
                            child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
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
                                    controller: firstNameController,
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty) {
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
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
                                    controller: lastNameController,
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty) {
                                        return 'Please enter your last name';
                                      }
                                      return null;
                                    })),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomFormField(
                        hint: 'Enter your Email',
                        controller: emailController,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your Email';
                          }
                          if (!ValidationRegex.emailRegex(value)) {
                            return 'Please enter Valid Email';
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomFormField(
                      hint: 'Enter your Password',
                      textInputType: TextInputType.visiblePassword,
                      controller: passwordController,
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
                            : Icon(Icons.visibility_off,
                                color: Colors.grey[500]),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomFormField(
                      hint: 'Please Confirm your Password',
                      textInputType: TextInputType.visiblePassword,
                      controller: confirmPasswordController,
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
                          if (hideConfirmPassword == false) {
                            hideConfirmPassword = true;
                          } else {
                            hideConfirmPassword = false;
                          }
                          setState(() {});
                        },
                        icon: hideConfirmPassword
                            ? Icon(
                                Icons.visibility,
                                color: Colors.grey[500],
                              )
                            : Icon(Icons.visibility_off,
                                color: Colors.grey[500]),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        login();
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
                            Text('Sign Up',
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
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already Have Account?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF352a49)),
                        ),
                        GestureDetector(
                          onTap: () {
                            AppRoutes.navigateOffAll(
                                page: LoginPage(),
                                transition: Transition.rightToLeft);
                          },
                          child: const Text(
                            ' Login Now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6a7293)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  login() {
    if (!formKey.currentState!.validate()) {
      return;
    }
  }
}
