import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sham_auto_project/config/routes/app_routes.dart';
import 'package:sham_auto_project/pages/login_page/login_page.dart';
import 'package:sham_auto_project/pages/signup_page/sign_up.dart';
import 'package:sham_auto_project/pages/splach/splach_screen.dart';
import 'package:sham_auto_project/services/application/application_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ApplicationServices.instance.initAllApplicationServices();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.applicationRoutes(),
      title: "Sham Auto",
      debugShowCheckedModeBanner: false,
      home: SplachScreen(),
      // initialRoute: AppRoutes.splashPage,
    );
  }
}
