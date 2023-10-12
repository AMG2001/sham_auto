import 'package:flutter/material.dart';
import 'package:sham_auto_project/services/application/colors.dart';
import 'package:sham_auto_project/services/local_db/user_data_box.dart';
import 'package:sham_auto_project/services/time_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: getWhiteOrBlack_as_theme_auto(),
        title: Text(
          "${TimeController.instance.getDayTimeMessage} , ${UserDataBox.instance.get_firstName()}",
          style: TextStyle(
              color: getWhiteOrBlack_auto(),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}
