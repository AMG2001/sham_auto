import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showLoadingIndicator() {
  showDialog(
    context: Get.context!,
    builder: (context) {
      return Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
    },
  );
}

void removeLoadingIndicator() {
  Navigator.pop(Get.context!);
}
