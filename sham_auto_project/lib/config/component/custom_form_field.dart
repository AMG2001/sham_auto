import 'package:flutter/material.dart';

typedef MyValidator = String? Function(String?)?;

class CustomFormField extends StatelessWidget {
  String? label;
  String hint;
  IconButton? suffix;
  bool isPassword;
  TextEditingController controller;
  TextInputType textInputType;
  int lines;
  MyValidator validator;
  CustomFormField(
      {this.label,
      required this.hint,
      this.isPassword = false,
      required this.controller,
      this.suffix,
      this.textInputType = TextInputType.text,
      this.lines = 1,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          /**
           * if You tapped outside , then close the Keyboard .
           */
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus!.unfocus();
          },
          obscureText: isPassword,
          controller: controller,
          keyboardType: textInputType,
          minLines: lines,
          maxLines: lines,
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            labelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 15),
            labelText: label,
            suffixIcon: suffix,
          ),
        ),
      ),
    );
  }
}
