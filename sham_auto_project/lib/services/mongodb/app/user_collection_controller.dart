import 'package:get/get.dart';
import 'package:sham_auto_project/config/models/user_data_model.dart';
import 'package:sham_auto_project/services/local_db/user_data_box.dart';
import 'package:sham_auto_project/services/local_db/user_logged_state.dart';
import 'package:sham_auto_project/services/mongodb/app/mongo_main_controller.dart';

class UserCollectionController {
  String _collection = "users";

  Future<void> registerUser({required UserDataModel userDataModel}) async {
    try {
      /**
       * Add User Account in mongo .
       */
      await MongoMainController.instance.dbObject
          .collection(_collection)
          .insertOne(userDataModel.toMap());
/**
 * store user data locally .
 */
      await UserDataBox.instance.put_allUserData(userDataModel: userDataModel);
      /**
           * Change logged state to true .
           */

      await UserLoggedStateBox.instance.changeUserLoggedState(newState: true);
    } catch (e) {
      print(
          "Error while Registering new User !! - in UserCollectionController : \n $e");
    }
  }
}
