import 'package:sham_auto_project/services/mongodb/mongo_main_controller.dart';

class ApplicationServices {
  ApplicationServices._privateConstructor();

  static final ApplicationServices _instance =
      ApplicationServices._privateConstructor();

  static ApplicationServices get instance => _instance;

  Future<void> initAllApplicationServices() async {
    await MongoMainController.instance.initMongoCloudConnection();
  }
}
