import 'package:hive_flutter/adapters.dart';
import 'package:sham_auto_project/config/theme/application_theme.dart';
import 'package:sham_auto_project/config/theme/application_theme_controller.dart';
import 'package:sham_auto_project/services/local_db/user_data_box.dart';
import 'package:sham_auto_project/services/local_db/user_logged_state.dart';
import 'package:sham_auto_project/services/mongodb/app/mongo_main_controller.dart';
import 'package:sham_auto_project/services/time_controller.dart';

class ApplicationServices {
  ApplicationServices._privateConstructor();

  static final ApplicationServices _instance =
      ApplicationServices._privateConstructor();

  static ApplicationServices get instance => _instance;

  Future<void> initAllApplicationServices() async {
    await Hive.initFlutter();

    await ApplicationThemeController.instance
        .initApplicationThemeController_ThemeAndBox();

    ApplicationTheme.instance.initApplicationThemes();

    await MongoMainController.instance.initMongoCloudConnection();

    await UserDataBox.instance.initiateUserDataBox();

    await UserLoggedStateBox.instance.initUserLoggedStateBox();

    TimeController.instance.initTimingController();
  }
}
