import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sham_auto_project/component/custom_form_field.dart';
import 'package:sham_auto_project/component/validator_utils.dart';
import 'package:sham_auto_project/pages/signup_page/sign_up.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = 'loginpage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool hidePassword = true;
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
                    Text('Hello Again!',
                        style: GoogleFonts.bebasNeue(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF352a49))),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Welcome back, you \'ve been missed',
                      style: GoogleFonts.lato(
                          color: const Color(0xFF352a49),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomFormField(
                        hint: 'Enter your Email',
                        textInputType: TextInputType.emailAddress,
                        controller: emailController,
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
                      textInputType: TextInputType.visiblePassword,
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
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 25, left: 8, top: 8, bottom: 8),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Recovery Password',
                            style: GoogleFonts.lato(
                                color: const Color(0xFF6a7293),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
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
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Not a member?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF352a49)),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, SignUpPage.routeName);
                          },
                          child: const Text(
                            ' Register Now',
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
